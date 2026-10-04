#version 450

layout(location = 0) in vec3 in_position;
layout(location = 1) in vec3 in_color;

layout(set = 0, binding = 0) uniform Scene {
    mat4 mvp;
    vec4 tint;
} scene;

layout(location = 0) out vec3 vertex_color;

void main() {
    gl_Position = scene.mvp * vec4(in_position, 1.0);
    vertex_color = in_color * scene.tint.rgb;
}
