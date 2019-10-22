#include "boat.h"
#include "main.h"

Boat::Boat(float x, float y, float z,color_t color) {
    this->position = glm::vec3(x, y, z);
    this->rotation = 0;
    this->speed = 0;
    this->xspeed = 0;
    this->zspeed = 0;
    // Our vertices. Three consecutive floats give a 3D vertex; Three consecutive vertices give a triangle.
    // A cube has 6 faces with 2 triangles each, so this makes 6*2=12 triangles, and 12*3 vertices
    GLfloat vertex_buffer_data1[] = {
         0.5f, 0.01f, 1.0f, // triangle 1
        -0.5f, 0.01f, 1.0f,
        0.5f, 0.01f, -1.0f,
        -0.5f, 0.01f, 1.0f, // triangle 2
        0.5f, 0.01f, -1.0f,
        -0.5f, 0.01f, -1.0f
      };

    GLfloat vertex_buffer_data2[] = {
        0.75f, 0.75f, 1.25f, // traingle 3
        0.75f, 0.75f, -1.25f,
        0.5f, 0.0f, 1.0f,
        0.75f, 0.75f, -1.25f, // triangle 4
        0.5f, 0.0f, 1.0f,
        0.5f, 0.0f,-1.0f,
        -0.75f, 0.75f, 1.25f, // traingle 5
        -0.75f, 0.75f, -1.25f,
        -0.5f, 0.0f, 1.0f,
        -0.5f, 0.0f, 1.0f, // triangle 6
        -0.75f, 0.75f, -1.25f,
        -0.5f, 0.0f, -1.0f,
        0.5f, 0.0f, 1.0f, // triangle 7
        -0.5f, 0.0f, 1.0f,
        0.75f, 0.75f, 1.25f,
        0.75f, 0.75f, 1.25f, // triangle 8
        -0.5f, 0.0f, 1.0f,
        -0.75f, 0.75f, 1.25f,
        0.5f, 0.0f, -1.0f, // triangle 9
        -0.5f, 0.0f, -1.0f,
        0.75f, 0.75f, -1.25f,
        0.75f, 0.75f, -1.25f, // triangle 10
        -0.5f, 0.0f, -1.0f,
        -0.75f, 0.75f, -1.25f,
    };

    GLfloat vertex_buffer_data3[] = {
        0.0f, 0.8f, -0.0f, //
        0.0f, 2.0f, -0.0f,
        0.5f, 0.8f, -1.0f
    };

    GLfloat vertex_buffer_data4[] = {
        0.1f, 0.0f, 0.1f,
        0.1f, 0.0f, -0.1f,
        0.0f, 2.1f, 0.0f,
        -0.1f, 0.0f, 0.1f,
        0.1f, 0.0f, -0.1f,
        0.0f, 2.1f, 0.0f,
        -0.1f, 0.0f, 0.1f,
        0.1f, 0.0f, 0.1f,
        0.0f, 2.1f, 0.0f,
        0.1f, 0.0f, 0.1f,
        0.1f, 0.0f, -0.1f,
        0.0f, 2.1f, 0.0f,
    };

    float r1 = 0.1f, r2 = 0.2f;
    int i, j = 0;
    GLfloat vertex_buffer_data5[2000];
    for(i = 0 ; i < 100; i++)
    {
      vertex_buffer_data5[j] = r1*cos(i*3.14159/50);
      j++;
      vertex_buffer_data5[j] = r1*sin(i*3.14159/50) + 1.25f;
      j++;
      vertex_buffer_data5[j] = -1.5f;
      j++;
      vertex_buffer_data5[j] = r1*cos((i+1)*3.14159/50);
      j++;
      vertex_buffer_data5[j] = r1*sin((i+1)*3.14159/50) + 1.25f;
      j++;
      vertex_buffer_data5[j] = -1.5f;
      j++;
      vertex_buffer_data5[j] = r2*cos(i*3.14159/50);
      j++;
      vertex_buffer_data5[j] = r2*sin(i*3.14159/50) + 0.5f;
      j++;
      vertex_buffer_data5[j] = -1.25f;
      j++;
      vertex_buffer_data5[j] = r2*cos(i*3.14159/50);
      j++;
      vertex_buffer_data5[j] = r2*sin(i*3.14159/50) + 0.5f;
      j++;
      vertex_buffer_data5[j] = -1.25f;
      j++;
      vertex_buffer_data5[j] = r2*cos((i+1)*3.14159/50);
      j++;
      vertex_buffer_data5[j] = r2*sin((i+1)*3.14159/50) + 0.5f;
      j++;
      vertex_buffer_data5[j] = -1.25f;
      j++;
      vertex_buffer_data5[j] = r1*cos((i+1)*3.14159/50);
      j++;
      vertex_buffer_data5[j] = r1*sin((i+1)*3.14159/50) + 1.25f;
      j++;
      vertex_buffer_data5[j] = -1.5f;
      j++;
    }
    j--;
    this->object1 = create3DObject(GL_TRIANGLES, 2*3, vertex_buffer_data1, COLOR_GREEN, GL_FILL);
    this->object2 = create3DObject(GL_TRIANGLES, 8*3, vertex_buffer_data2, color, GL_FILL);
    this->object3 = create3DObject(GL_TRIANGLES, 3, vertex_buffer_data3, COLOR_SAIL, GL_FILL);
    this->object4 = create3DObject(GL_TRIANGLES, 4*3, vertex_buffer_data4, COLOR_GREEN, GL_FILL);
    this->object5 = create3DObject(GL_TRIANGLES, 200*3, vertex_buffer_data5, COLOR_GREEN, GL_FILL);
}

void Boat::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(0, 1, 0));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object1);
    draw3DObject(this->object2);
    draw3DObject(this->object3);
    draw3DObject(this->object4);
    draw3DObject(this->object5);
}

void Boat::set_position(float x, float y, float z) {
    this->position = glm::vec3(x, y, z);
}

void Boat::tick() {
    this->position.x += this->xspeed;
    this->position.z += this->zspeed;
}

bounding_box_t Boat::bounding_box() {
    float x = this->position.x, y = this->position.y, z = this->position.z;
    bounding_box_t bbox = { x, y, z};
    return bbox;
}
