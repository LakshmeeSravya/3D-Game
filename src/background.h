#include "main.h"

#ifndef BACK_H
#define BACK_H


class Background {
public:
    Background() {}
    Background(float x, float y, float z);
    glm::vec3 position;
    float rotation;
    void draw(glm::mat4 VP);
    void set_position(float x, float y, float z);
private:
    VAO *object1;
    VAO *object2;
};

#endif
