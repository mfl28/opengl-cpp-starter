# OpenGL Cpp Starter

[![Build Status](https://dev.azure.com/mfl28/opengl-cpp-starter/_apis/build/status/mfl28.opengl-cpp-starter?branchName=master)](https://dev.azure.com/mfl28/opengl-cpp-starter/_build/latest?definitionId=2&branchName=master)

This repo provides easy to use starter code for OpenGL C++ projects 
using modern CMake. The included CMake scripts automatically fetch and link [glfw](https://github.com/glfw/glfw), [glad](https://github.com/Dav1dde/glad) and [glm](https://github.com/g-truc/glm). The sample OpenGL code is based on [learnopengl.com](https://learnopengl.com) and currently just opens a blank window. 

## How to build
```bash
git clone https://github.com/mfl28/opengl-cpp-starter.git
cd opengl-cpp-starter
cmake -B build
cmake --build build
```

## How to run
### Linux / MacOS
```bash
cd build
./starter
```
### Windows
```bash
cd build\Debug
.\starter
```

## License
This repository  is licensed under MIT, see [LICENSE](LICENSE).
