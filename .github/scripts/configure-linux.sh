#!/bin/bash

cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE:STRING=~/vcpkg/scripts/buildsystems/vcpkg.cmake -G "Unix Makefiles"
