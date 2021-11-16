#!/bin/bash

cmake --no-warn-unused-cli \
  -B build \
  -S . \
  -DCMAKE_TOOLCHAIN_FILE="~/vcpkg/scripts/buildsystems/vcpkg.cmake"
