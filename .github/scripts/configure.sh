#!/bin/bash

cmake --no-warn-unused-cli \
  -DCMAKE_TOOLCHAIN_FILE="~/vcpkg/scripts/buildsystems/vcpkg.cmake" \
  -DCMAKE_C_COMPILER:FILEPATH="/usr/bin/clang" \
  -DCMAKE_CXX_COMPILER:FILEPATH="/usr/bin/clang++" \
  -B ./build \
  -G Ninja
