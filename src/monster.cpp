#include "monster.h"
#include "main.h"

Monster::Monster(float x, float y, float z) {
    this->position = glm::vec3(x, y, z);
    this->rotation = 0;
    this->flag = 0;
    this->angle = (rand() / 5) * 0.5f;

    GLfloat vertex_buffer_data1[] = {
        0.5f, 0.0f, 0.5f,
        0.5f, 0.0f, -0.5f,
        0.0f, 2.5f, 0.0f,
        -0.5f, 0.0f, 0.5f,
        0.5f, 0.0f, -0.5f,
        0.0f, 2.5f, 0.0f,
        -0.5f, 0.0f, 0.5f,
        0.5f, 0.0f, 0.5f,
        0.0f, 2.5f, 0.0f,
        0.5f, 0.0f, 0.5f,
        0.5f, 0.0f, -0.5f,
        0.0f, 2.5f, 0.0f,
    };

    this->object1 = create3DObject(GL_TRIANGLES, 4*3, vertex_buffer_data1, COLOR_MONSTER, GL_FILL);

    GLfloat vertex_buffer_data2[] = {
      -0.5f,-0.5f,-0.5f, // triangle 1 : begin
        -0.5f,-0.5f, 0.5f,
        -0.5f, 0.5f, 0.5f, // triangle 1 : end
        0.5f, 0.5f,-0.5f, // triangle 2 : begin
        -0.5f,-0.5f,-0.5f,
        -0.5f, 0.5f,-0.5f, // triangle 2 : end
        0.5f,-0.5f, 0.5f,
        -0.5f,-0.5f,-0.5f,
        0.5f,-0.5f,-0.5f,
        0.5f, 0.5f,-0.5f,
        0.5f,-0.5f,-0.5f,
        -0.5f,-0.5f,-0.5f,
        -0.5f,-0.5f,-0.5f,
        -0.5f, 0.5f, 0.5f,
        -0.5f, 0.5f,-0.5f,
        0.5f,-0.5f, 0.5f,
        -0.5f,-0.5f, 0.5f,
        -0.5f,-0.5f,-0.5f,
        -0.5f, 0.5f, 0.5f,
        -0.5f,-0.5f, 0.5f,
        0.5f,-0.5f, 0.5f,
        0.5f, 0.5f, 0.5f,
        0.5f,-0.5f,-0.5f,
        0.5f, 0.5f,-0.5f,
        0.5f,-0.5f,-0.5f,
        0.5f, 0.5f, 0.5f,
        0.5f,-0.5f, 0.5f,
        0.5f, 0.5f, 0.5f,
        0.5f, 0.5f,-0.5f,
        -0.5f, 0.5f,-0.5f,
        0.5f, 0.5f, 0.5f,
        -0.5f, 0.5f,-0.5f,
        -0.5f, 0.5f, 0.5f,
        0.5f, 0.5f, 0.5f,
        -0.5f, 0.5f, 0.5f,
        0.5f,-0.5f, 0.5f
    };

    this->object2 = create3DObject(GL_TRIANGLES, 12*3, vertex_buffer_data2, COLOR_GIFT, GL_FILL);

    GLfloat vertex_buffer_data3[] = {
        1.5f, 0.0f, 1.5f,
        1.5f, 0.0f, -1.5f,
        0.0f, 4.5f, 0.0f,
        -1.5f, 0.0f, 1.5f,
        1.5f, 0.0f, -1.5f,
        0.0f, 4.5f, 0.0f,
        -1.5f, 0.0f, 1.5f,
        1.5f, 0.0f, 1.5f,
        0.0f, 4.5f, 0.0f,
        1.5f, 0.0f, 1.5f,
        1.5f, 0.0f, -1.5f,
        0.0f, 4.5f, 0.0f,
    };
    this->object3 = create3DObject(GL_TRIANGLES, 4*3, vertex_buffer_data3, COLOR_MONSTER2, GL_FILL);

    GLfloat vertex_buffer_data4[] = {
        1.5f, 0.0f, 1.5f,
        1.5f, 0.0f, -1.5f,
        0.0f, 4.5f, 0.0f,
        -1.5f, 0.0f, 1.5f,
        1.5f, 0.0f, -1.5f,
        0.0f, 4.5f, 0.0f,
        -1.5f, 0.0f, 1.5f,
        1.5f, 0.0f, 1.5f,
        0.0f, 4.5f, 0.0f,
        1.5f, 0.0f, 1.5f,
        1.5f, 0.0f, -1.5f,
        0.0f, 4.5f, 0.0f,
    };
    this->object4 = create3DObject(GL_TRIANGLES, 4*3, vertex_buffer_data4, COLOR_MONSTER3, GL_FILL);

    GLfloat vertex_buffer_data5[] = {
      -1.5f,-1.5f,-1.5f, // triangle 1 : begin
        -1.5f,-1.5f, 1.5f,
        -1.5f, 1.5f, 1.5f, // triangle 1 : end
        1.5f, 1.5f,-1.5f, // triangle 2 : begin
        -1.5f,-1.5f,-1.5f,
        -1.5f, 1.5f,-1.5f, // triangle 2 : end
        1.5f,-1.5f, 1.5f,
        -1.5f,-1.5f,-1.5f,
        1.5f,-1.5f,-1.5f,
        1.5f, 1.5f,-1.5f,
        1.5f,-1.5f,-1.5f,
        -1.5f,-1.5f,-1.5f,
        -1.5f,-1.5f,-1.5f,
        -1.5f, 1.5f, 1.5f,
        -1.5f, 1.5f,-1.5f,
        1.5f,-1.5f, 1.5f,
        -1.5f,-1.5f, 1.5f,
        -1.5f,-1.5f,-1.5f,
        -1.5f, 1.5f, 1.5f,
        -1.5f,-1.5f, 1.5f,
        1.5f,-1.5f, 1.5f,
        1.5f, 1.5f, 1.5f,
        1.5f,-1.5f,-1.5f,
        1.5f, 1.5f,-1.5f,
        1.5f,-1.5f,-1.5f,
        1.5f, 1.5f, 1.5f,
        1.5f,-1.5f, 1.5f,
        1.5f, 1.5f, 1.5f,
        1.5f, 1.5f,-1.5f,
        -1.5f, 1.5f,-1.5f,
        1.5f, 1.5f, 1.5f,
        -1.5f, 1.5f,-1.5f,
        -1.5f, 1.5f, 1.5f,
        1.5f, 1.5f, 1.5f,
        -1.5f, 1.5f, 1.5f,
        1.5f,-1.5f, 1.5f
    };

    this->object5 = create3DObject(GL_TRIANGLES, 12*3, vertex_buffer_data5, COLOR_GIFT, GL_FILL);
}

void Monster::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(0, 1, 0));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    if(this->flag == 0)
    {
      draw3DObject(this->object1);
    }
    else if(this->flag == 1)
    {
      draw3DObject(this->object2);
    }
    else if(this->flag == 3)
    {
      draw3DObject(this->object3);
    }
    else if(this->flag == 4)
    {
      draw3DObject(this->object4);
    }
    else if(this->flag == 5)
    {
      draw3DObject(this->object5);
    }
}

void Monster::set_position(float x, float y, float z) {
    this->position = glm::vec3(x, y, z);
}

void Monster::tick() {
    this->position.x -= sin(this->angle * 3.14159 / 180) * 0.03f;
    this->position.z -= cos(this->angle * 3.14159 / 180) * 0.03f;
}

bounding_box_t Monster::bounding_box() {
    float x = this->position.x, y = this->position.y, z = this->position.z;
    bounding_box_t bbox = { x, y, z};
    return bbox;
}
