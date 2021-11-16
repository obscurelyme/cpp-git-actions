choco install ninja -y

cmake --no-warn-unused-cli \
  -DCMAKE_TOOLCHAIN_FILE="~/vcpkg/scripts/buildsystems/vcpkg.cmake" \
  -DCMAKE_C_COMPILER:FILEPATH="C:\Program Files\LLVM\bin\clang" \
  -DCMAKE_CXX_COMPILER:FILEPATH="C:\Program Files\LLVM\bin\clang++" \
  -G Ninja \
  -B ./build \
