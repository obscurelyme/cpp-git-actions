cmake_minimum_required(VERSION 3.16.0)

set(VCPKG_MANIFEST_MODE ON)

set(C_STANDARD_REQUIRED TRUE)
set(CXX_STANDARD_REQUIRED TRUE)
set(C_STANDARD 17)
set(CMAKE_CXX_STANDARD 20)

project(HelloWorld VERSION 0.1.0)

if(APPLE OR LINUX_PLATFORM)
	set(CMAKE_THREAD_LIBS_INIT "-lpthread")
	set(CMAKE_HAVE_THREADS_LIBRARY 1)
	set(CMAKE_USE_WIN32_THREADS_INIT 0)
	set(CMAKE_USE_PTHREADS_INIT 1)
	set(THREADS_PREFER_PTHREAD_FLAG ON)
endif()

find_package(SDL2 CONFIG REQUIRED)

add_executable(HelloWorld main.cpp)

if (APPLE)
  target_link_libraries(HelloWorld PRIVATE SDL2::SDL2 SDL2::SDL2main SDL2::SDL2-static)
elseif (WIN32)
  target_link_libraries(HelloWorld PRIVATE SDL2::SDL2 SDL2::SDL2main)
else ()
	target_link_libraries(HelloWorld PRIVATE SDL2::SDL2 SDL2::SDL2main SDL2::SDL2-static)
endif()
