choco install ninja -y

cmake --no-warn-unused-cli \
  -DCMAKE_TOOLCHAIN_FILE="~/vcpkg/scripts/buildsystems/vcpkg.cmake" \
  -B ./build \
