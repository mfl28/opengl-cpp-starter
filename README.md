# OpenGL Cpp Starter

[![Build Status](https://dev.azure.com/mfl28/opengl-cpp-starter/_apis/build/status/mfl28.opengl-cpp-starter?branchName=master)](https://dev.azure.com/mfl28/opengl-cpp-starter/_build/latest?definitionId=2&branchName=master)

This repo provides easy to use starter code for OpenGL C++ projects 
using modern CMake. The included CMake scripts automatically fetch and link [glfw](https://github.com/glfw/glfw), [glad](https://github.com/Dav1dde/glad) and [glm](https://github.com/g-truc/glm). Optionally, you can also fetch and link [assimp](https://github.com/assimp/assimp) (see [Generating build system](#generate-build-system)). The sample OpenGL code is based on [learnopengl.com](https://learnopengl.com) and currently just opens a blank window. 

## Getting started

### Clone

```bash
git clone https://github.com/mfl28/opengl-cpp-starter.git
cd opengl-cpp-starter
```

### Generate build system

```bash
# Useful options:
# -D USE_ASSIMP=(YES|NO) (fetch and link assimp library, default: NO)
cmake -B build
```

### Build

```bash
# Useful options:
# --parallel <max-processor-number> (build in parallel)
cmake --build build
```

### Run

#### Linux / MacOS

```bash
cd build
./starter
```

#### Windows

```bash
cd build\Debug
.\starter
```

## License

This repository  is licensed under MIT, see [LICENSE](LICENSE).
