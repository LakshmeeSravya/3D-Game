#include "rock.h"
#include "main.h"

Rock::Rock(float x, float y, float z) {
    this->position = glm::vec3(x, y, z);
    this->rotation = 0;
    this->flag = 1;

   GLfloat vertex_buffer_data1[] = {
        1.5f, 0.0f, 1.5f, //1
        -1.5f, 0.0f, 1.5f,
        1.0f, 2.0f, 1.0f,
        -1.5f, 0.0f, 1.5f, //2
        1.0f, 2.0f, 1.0f,
        -1.0f, 2.0f, 1.0f,
        1.5f, 0.0f, -1.5f, //3
        -1.5f, 0.0f, -1.5f,
        1.0f, 2.0f, -1.0f,
        -1.5f, 0.0f, -1.5f, //4
        1.0f, 2.0f, -1.0f,
        -1.0f, 2.0f, -1.0f,
        1.5f, 0.0f, 1.5f, //5
        1.5f, 0.0f, -1.5f,
        1.0f, 2.0f, 1.0f,
        1.5f, 0.0f, -1.5f, //6
        1.0f, 2.0f, 1.0f,
        1.0f, 2.0f, -1.0f,
        -1.5f, 0.0f, 1.5f, //7
        -1.5f, 0.0f, -1.5f,
        -1.0f, 2.0f, 1.0f,
        -1.5f, 0.0f, -1.5f, //8
        -1.0f, 2.0f, 1.0f,
        -1.0f, 2.0f, -1.0f,
        1.0f, 2.0f, 1.0f, //9
        1.0f, 2.0f, -1.0f,
        -1.0f, 2.0f, 1.0f,
        -1.0f, 2.0f, -1.0f, //10
        1.0f, 2.0f, -1.0f,
        -1.0f, 2.0f, 1.0f,
    };

    this->object = create3DObject(GL_TRIANGLES, 10*3, vertex_buffer_data1, COLOR_ROCK, GL_FILL);
}

void Rock::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(0, 0, 1));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object);
}

void Rock::set_position(float x, float y, float z) {
    this->position = glm::vec3(x, y, z);
}

bounding_box_t Rock::bounding_box() {
    float x = this->position.x, y = this->position.y, z = this->position.z;
    bounding_box_t bbox = { x, y, z};
    return bbox;
}
