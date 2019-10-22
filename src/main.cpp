#include "main.h"
#include "timer.h"
#include "boat.h"
#include "background.h"
#include "rock.h"
#include "monster.h"
#include "ball.h"
#include "barrel.h"
#include <unistd.h>
#include<iostream>
#include <sstream>
#include <string>

using namespace std;

GLMatrices Matrices;
GLuint     programID;
GLFWwindow *window;

/**************************
* Customizable functions *
**************************/

Background back;
Rock rock[200];
Monster monster[200];
Ball ball;
Barrel barrel[100];
Boat boat;

float screen_zoom = 0.5f, screen_center_x = 0, screen_center_y = 0;
//float camera_rotation_angle = 0;
float ex = 0;
float ey = 5;
float ez = 5;
float ux = 0;
float uy = 2;
float uz = -1;
float tx = 0, ty = 0, tz = 0;
int flag = 4, f_flag = 0, i, score = 0, health = 100, j_flag = 0, wind_time = 500, wind_flag = 0, num_monsters = 0, temp = 0;

Timer t60(1.0 / 60);

/* Render the scene with openGL */
/* Edit this function according to your assignment */
void draw() {
    // clear the color and depth in the frame buffer
    glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // use the loaded shader program
    // Don't change unless you know what you are doing
    glUseProgram (programID);

    // Eye - Location of camera. Don't change unless you are sure!!
    glm::vec3 eye (ex, ey, ez);
    // Target - Where is the camera looking at.  Don't change unless you are sure!!
    glm::vec3 target (tx, ty, tz);
    // Up - Up vector defines tilt of camera.  Don't change unless you are sure!!
    glm::vec3 up (ux, uy, uz);

    // Compute Camera matrix (view)
    Matrices.view = glm::lookAt( eye, target, up ); // Rotating Camera for 3D
    // Don't change unless you are sure!!
    // Matrices.view = glm::lookAt(glm::vec3(0, 0, 3), glm::vec3(0, 0, 0), glm::vec3(0, 1, 0)); // Fixed camera for 2D (ortho) in XY plane

    // Compute ViewProject matrix as view/camera might not be changed for this frame (basic scenario)
    // Don't change unless you are sure!!
    glm::mat4 VP = Matrices.projection * Matrices.view;

    // Send our transformation to the currently bound shader, in the "MVP" uniform
    // For each model you render, since the MVP will be different (at least the M part)
    // Don't change unless you are sure!!
    glm::mat4 MVP;  // MVP = Projection * View * Model

    // Scene render
    back.draw(VP);
    for(i = 0; i < 100; i++)
    {
      rock[i].draw(VP);
      monster[i].draw(VP);
    }
    for(i = 0; i < 50; i++)
    {
      barrel[i].draw(VP);
    }
    if(f_flag)
    {
      ball.draw(VP);
    }
    boat.draw(VP);
}

void tick_input(GLFWwindow *window) {
    int left  = glfwGetKey(window, GLFW_KEY_LEFT);
    int right = glfwGetKey(window, GLFW_KEY_RIGHT);
    int forward = glfwGetKey(window, GLFW_KEY_UP);
    int backward = glfwGetKey(window, GLFW_KEY_DOWN);
    int boat_view = glfwGetKey(window, GLFW_KEY_B);
    int top_view = glfwGetKey(window, GLFW_KEY_T);
    int tower_view = glfwGetKey(window, GLFW_KEY_W);
    int follow_cam = glfwGetKey(window, GLFW_KEY_O);
    int helicopter = glfwGetKey(window, GLFW_KEY_H);
    int jump = glfwGetKey(window, GLFW_KEY_SPACE);
    int fireball = glfwGetKey(window, GLFW_KEY_F);
    int zoom_out = glfwGetKey(window, GLFW_KEY_MINUS);
    int zoom_in = glfwGetKey(window, GLFW_KEY_EQUAL);
    /*int click = (glfwGetMouseButton(window, GLFW_MOUSE_BUTTON_1) == GLFW_PRESS);
    double xpos, ypos;
    if(click)
    {
      glfwGetCursorPos(window, &xpos, &ypos);
    }*/

    if(boat_view)
      flag = 1;
    else if(top_view)
      flag = 2;
    else if(tower_view)
      flag = 3;
    else if(follow_cam)
      flag = 4;
    else if(helicopter)
      flag = 5;

    if(zoom_in && flag == 5)
    {
      screen_zoom += 0.005f;
      reset_screen();
    }

    if(zoom_out && flag == 5)
    {
      screen_zoom -= 0.005f;
      reset_screen();
    }

    if(left)
    {
        boat.rotation += 1.5f;
    }
    if(right)
    {
      boat.rotation -= 1.5f;
    }
    if(forward)
    {
      boat.position.z -= 0.2f * cos(boat.rotation * 3.14159 / 180);
      boat.position.x -= 0.2f * sin(boat.rotation * 3.14159 / 180);
    }
    if(backward)
    {
      boat.position.z += 0.2f * cos(boat.rotation * 3.14159 / 180);
      boat.position.x += 0.2f * sin(boat.rotation * 3.14159 / 180);
    }

    if((jump && j_flag==0) || (boat.position.y > 0.1f && j_flag==1))
    {
      boat.position.y += boat.speed;
      if(jump && !j_flag)
      {
        boat.speed = 0.2f;
      }
      boat.speed -= 0.01;
      j_flag = 1;
    }
    else
    {
      j_flag = 0;
      boat.speed = 0.2;
    }

    if((fireball && f_flag==0) || (ball.position.y > 0.0f && f_flag==1))
    {
      ball.position.y += ball.speed;
      if(fireball && !f_flag)
      {
        ball.speed = 0.2f;
        ball.position.x = boat.position.x - (2.75f * sin(boat.rotation * 3.14159 / 180));
        ball.position.y = boat.position.y + 1.25f;
        ball.position.z = boat.position.z - (2.75f * cos(boat.rotation * 3.14159 / 180));
      }
      ball.speed -= 0.025f;
      ball.position.x -= 0.45f * sin(boat.rotation * 3.14159 / 180);
      ball.position.z -= 0.45f * cos(boat.rotation * 3.14159 / 180);
      f_flag = 1;
    }
    else
    {
      f_flag = 0;
    }

    if(flag == 1) //
    {
      ex = boat.position.x;
      ey = boat.position.y + 1.0f;
      ez = boat.position.z;
      tx = boat.position.x - 10 * sin(boat.rotation * 3.14159 / 180);
      ty = boat.position.y + 1.0f;
      tz = boat.position.z - 10 * cos(boat.rotation * 3.14159 / 180);
      ux = 0;
      uy = 1;
      uz = 0;
    }
    else if(flag == 2)//
    {
      ex = 0;
      ey = 180.0f;
      ez = 0;
      tx = 0;
      ty = 0;
      tz = 0;
      ux = 0;
      uy = 0;
      uz = -1;
    }
    else if(flag == 3)
    {
      ex = 10.0f;
      ey = 10.0f;
      ez = 0.0f;
      tx = boat.position.x;
      ty = boat.position.y;
      tz = boat.position.z;
      ux = 0;
      uy = 1;
      uz = 0;
    }
    else if(flag == 4)
    {
      ex = boat.position.x + 5 * sin(boat.rotation * 3.14159 / 180);
      ey = boat.position.y + 4.0f;
      ez = boat.position.z + 5 * cos(boat.rotation * 3.14159 / 180);
      tx = boat.position.x;
      ty = boat.position.y;
      tz = boat.position.z;
      ux = 0;
      uy = 1;
      uz = 0;
    }
    else if(flag == 5)//
    {
      ex = boat.position.x;
      ey = 50.0f;
      ez = boat.position.z;
      tx = boat.position.x;
      ty = boat.position.y;
      tz = boat.position.z;
      ux = -sin(boat.rotation * 3.14159 / 180); // 0;
      uy = 0;
      uz = -cos(boat.rotation * 3.14159 / 180); // -1;
    }
}

void tick_elements() {
    if(wind_time == 0)
    {
      wind_flag = 1;
      wind_time = (rand() % 500) + 500;
    }
    if(wind_flag)
    {
      boat.xspeed -= 0.1f;
      boat.zspeed -= 0.1f;
      boat.tick();
    }
    if(boat.xspeed <= 0 || boat.zspeed <= 0)
    {
      wind_flag = 0;
      boat.xspeed = 0.5f * (rand() % 3) + 1.5f;
      boat.zspeed = 0.5f * (rand() % 3) + 1.5f;
    }

    for(i = 0; i < 100; i++)
    {
      if(detect_collision(boat.bounding_box(), rock[i].bounding_box()))
      {
        sleep(1);
        boat.position.x = 0;
        boat.position.y = 0;
        boat.position.z = 0;
        boat.rotation = 0;
        health -= 20;
      }
    }

    for(i = 0; i < 100; i++)
    {
      if(monster[i].flag == 0 || monster[i].flag == 3 || monster[i].flag == 4)
      {
        monster[i].tick();
        temp = 0;
      }
    }

    for(i = 0; i < 100; i++)
    {
      if((monster[i].flag == 0 || monster[i].flag == 4 || monster[i].flag == 3) && detect_monster(boat.bounding_box(), monster[i].bounding_box()))
      {
        sleep(1);
        boat.position.x = 0;
        boat.position.y = 0;
        boat.position.z = 0;
        boat.rotation = 0;
        health -= 20;
      }
      else if(monster[i].flag == 0 && detect_fireball(ball.bounding_box(), monster[i].bounding_box()))
      {
        monster[i].flag = 1;
        score += 10;
        num_monsters++;
        f_flag = 0;
        if(num_monsters == 5)
        {
          monster[i].flag = 3;
          num_monsters = 0;
        }
        ball.position.x = boat.position.x - (2.75f * sin(boat.rotation * 3.14159 / 180));
        ball.position.y = boat.position.y + 1.25f;
        ball.position.z = boat.position.z - (2.75f * cos(boat.rotation * 3.14159 / 180));
        break;
      }
      else if(monster[i].flag == 1 && detect_gift(boat.bounding_box(), monster[i].bounding_box()))
      {
        monster[i].flag = 2;
        score += 20;
      }
      else if(monster[i].flag == 3 && detect_boss(ball.bounding_box(), monster[i].bounding_box()))
      {
        monster[i].flag = 4;
        score += 20;
        f_flag = 0;
        ball.position.x = boat.position.x - (2.75f * sin(boat.rotation * 3.14159 / 180));
        ball.position.y = boat.position.y + 1.25f;
        ball.position.z = boat.position.z - (2.75f * cos(boat.rotation * 3.14159 / 180));
        break;
      }
      else if(monster[i].flag == 4 && detect_boss(ball.bounding_box(), monster[i].bounding_box()))
      {
        monster[i].flag = 5;
        score += 20;
        f_flag = 0;
        ball.position.x = boat.position.x - (2.75f * sin(boat.rotation * 3.14159 / 180));
        ball.position.y = boat.position.y + 1.25f;
        ball.position.z = boat.position.z - (2.75f * cos(boat.rotation * 3.14159 / 180));
        break;
      }
      else if(monster[i].flag == 5 && detect_booster(boat.bounding_box(), monster[i].bounding_box()))
      {
        monster[i].flag = 2;
        score += 50;
      }
    }

    for(i = 0; i < 50; i++)
    {
      if(barrel[i].flag && boat.speed < 0 && detect_barrel(boat.bounding_box(), barrel[i].bounding_box()))
      {
        score += barrel[i].score;
        barrel[i].flag = 0;
      }
    }

    ostringstream str1, str2;
    str1 << score;
    str2 << health;
    string str = str1.str();
    string st = str2.str();
    string temp = "SCORE : " + str + "     HEALTH : " + st + "%";
    if(health != 0)
    {
      glfwSetWindowTitle(window, temp.c_str());
    }
    else
    {
      temp = "GAMEOVER";
      glfwSetWindowTitle(window, temp.c_str());
      sleep(2);
      exit(0);
    }
}

/* Initialize the OpenGL rendering properties */
/* Add all the models to be created here */
void initGL(GLFWwindow *window, int width, int height) {
    /* Objects should be created before any other gl function and shaders */
    // Create the models
    back = Background(0, 0, 0);
    ball = Ball(0, 0, 0);

    float rx, rz;
    for(i = 0; i < 100; i++)
    {
      rx = (rand() % 200 - 100.0f) * 3;
      rz = (rand() % 200 - 100.0f) * 3;
      while(rx == 0 && rz == 0)
      {
        rx = (rand() % 200 - 100.0f) * 3;
        rz = (rand() % 200 - 100.0f) * 3;
      }
      rock[i] = Rock(rx, 0, rz);
    }

    for(i = 0; i < 100; i++)
    {
      rx = (rand() % 300 - 100.0f) * 2;
      rz = (rand() % 300 - 100.0f) * 2;
      while(rx == 0 && rz == 0)
      {
        rx = (rand() % 300 - 100.0f) * 2;
        rz = (rand() % 300 - 100.0f) * 2;
      }
      monster[i] = Monster(rx, 0, rz);
    }

    for(i = 0; i < 50; i++)
    {
      rx = (rand() % 50 - 25.0f) * 5;
      rz = (rand() % 50 - 25.0f) * 5;
      while(rx == 0 && rz == 0)
      {
        rx = (rand() % 50 - 25.0f) * 5;
        rz = (rand() % 50 - 25.0f) * 5;
      }
      barrel[i] = Barrel(rx, 0, rz);
    }
    boat = Boat(0, 0, 0, COLOR_BOAT);
    // Create and compile our GLSL program from the shaders
    programID = LoadShaders("Sample_GL.vert", "Sample_GL.frag");
    // Get a handle for our "MVP" uniform
    Matrices.MatrixID = glGetUniformLocation(programID, "MVP");


    reshapeWindow (window, width, height);

    // Background color of the scene
    glClearColor (COLOR_BACKGROUND.r / 256.0, COLOR_BACKGROUND.g / 256.0, COLOR_BACKGROUND.b / 256.0, 0.0f); // R, G, B, A
    glClearDepth (1.0f);

    glEnable (GL_DEPTH_TEST);
    glDepthFunc (GL_LEQUAL);

    cout << "VENDOR: " << glGetString(GL_VENDOR) << endl;
    cout << "RENDERER: " << glGetString(GL_RENDERER) << endl;
    cout << "VERSION: " << glGetString(GL_VERSION) << endl;
    cout << "GLSL: " << glGetString(GL_SHADING_LANGUAGE_VERSION) << endl;
}


int main(int argc, char **argv) {
    srand(time(0));
    int width  = 1000;
    int height = 1000;

    window = initGLFW(width, height);

    initGL (window, width, height);

    /* Draw in loop */
    while (!glfwWindowShouldClose(window)) {
        // Process timers

        if (t60.processTick()) {
            // 60 fps
            // OpenGL Draw commands
            wind_time--;
            draw();
            // Swap Frame Buffer in double buffering
            glfwSwapBuffers(window);

            tick_elements();
            tick_input(window);
            reset_screen();
        }

        // Poll for Keyboard and mouse events
        glfwPollEvents();
    }

    quit(window);
}

bool detect_collision(bounding_box_t a, bounding_box_t b) {
    return (abs(a.x - b.x) < 2.25f && abs(a.z - b.z) < 2.75f);
}

bool detect_monster(bounding_box_t a, bounding_box_t b) {
    return (abs(a.x - b.x) < 1.25f && abs(a.z - b.z) < 1.75f);
}

bool detect_fireball(bounding_box_t a, bounding_box_t b) {
  return ((a.y > -0.2f && a.y < 2.7) &&
          (a.x >= b.x - 0.6f && a.x <= b.x + 0.6f) &&
          (a.z >= b.z - 0.6f && a.z <= b.z + 0.6f));
}

bool detect_gift(bounding_box_t a, bounding_box_t b) {
  return (abs(a.x - b.x) < 1.25f && abs(a.z - b.z) < 1.75f);
}

bool detect_boss(bounding_box_t a, bounding_box_t b) {
  return ((a.y > -0.2f && a.y < 4.7) &&
          (a.x >= b.x - 1.6f && a.x <= b.x + 1.6f) &&
          (a.z >= b.z - 1.6f && a.z <= b.z + 1.6f));
}

bool detect_booster(bounding_box_t a, bounding_box_t b) {
  return (abs(a.x - b.x) < 2.25f && abs(a.z - b.z) < 2.75f);
}

bool detect_barrel(bounding_box_t a, bounding_box_t b) {
  return (a.y >= 0.0f && a.y <= 0.5f &&
          abs(a.x - b.x) <= 1.45f &&
          abs(a.z - b.z) <= 1.75f);
}

void reset_screen() {
    float top    = screen_center_y + 8 / screen_zoom;
    float bottom = screen_center_y - 8 / screen_zoom;
    float left   = screen_center_x - 8 / screen_zoom;
    float right  = screen_center_x + 8 / screen_zoom;
    if(flag == 5)
      Matrices.projection = glm::ortho(left, right, bottom, top, 0.1f, 500.0f);
    else
      Matrices.projection = glm::perspective(8.0f, 1.0f, 0.1f, 500.0f);
}
