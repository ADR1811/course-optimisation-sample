cmake_minimum_required(VERSION 3.5.0)
project(raytracer VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(raytracer main.cpp)

target_include_directories(raytracer PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           "${PROJECT_SOURCE_DIR}/src/raymath"
                           "${PROJECT_SOURCE_DIR}/src/rayimage"
                           "${PROJECT_SOURCE_DIR}/src/rayscene"
                           )

add_subdirectory(./src/raymath)
add_subdirectory(./src/rayimage)
add_subdirectory(./src/rayscene)
add_subdirectory(./src/lodepng)

target_link_libraries(raytracer 
                      PUBLIC 
                      rayscene
                      raymath
                      rayimage
                      lodepng
                      )

enable_testing()


add_test(NAME render_valid_scene COMMAND raytracer ./scenes/two-spheres-on-plane.json)
set_tests_properties(render_valid_scene PROPERTIES PASS_REGULAR_EXPRESSION "Writing file: image.png")

add_test(NAME verify_valid_scene_hash
         COMMAND bash -c "raytracer ./scenes/two-spheres-on-plane.json | sha256sum ./image.png | cut -d' ' -f1 | grep -q '^3640a8a6d6c6ac1916c87332f6db33ce1d494fa1ac7c4745cab6ba2f26b0f535$'")
set_tests_properties(verify_valid_scene_hash PROPERTIES DEPENDS render_valid_scene)


add_test(NAME run_with_wrong_path COMMAND raytracer ./scenes/nonexistent-file.json)
set_tests_properties(run_with_wrong_path PROPERTIES PASS_REGULAR_EXPRESSION "Scene file not found at path: ./scenes/nonexistent-file.json")


add_test(NAME run_with_no_scene_file COMMAND raytracer)
set_tests_properties(run_with_no_scene_file PROPERTIES WILL_FAIL False)


add_test(NAME run_with_name COMMAND raytracer ./scenes/two-spheres-on-plane.json test.png)
set_tests_properties(run_with_name PROPERTIES PASS_REGULAR_EXPRESSION "Writing file: test.png")


add_test(NAME render_invalid_scene COMMAND raytracer ./scenes/invalid-scene.json)
set_tests_properties(render_invalid_scene PROPERTIES TIMEOUT 5)