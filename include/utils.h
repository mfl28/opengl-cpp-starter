#pragma once

struct GLFWwindow;

namespace utils {
void framebuffer_size_callback(GLFWwindow* window, int width, int height);

void processInput(GLFWwindow* window);
}  // namespace utils
