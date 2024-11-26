# CMake generated Testfile for 
# Source directory: /app
# Build directory: /app
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(render_valid_scene "/app/raytracer" "./scenes/two-spheres-on-plane.json")
set_tests_properties(render_valid_scene PROPERTIES  PASS_REGULAR_EXPRESSION "Writing file: image.png" _BACKTRACE_TRIPLES "/app/CMakeLists.txt;32;add_test;/app/CMakeLists.txt;0;")
add_test(verify_valid_scene_hash "bash" "-c" "raytracer ./scenes/two-spheres-on-plane.json | sha256sum ./image.png | cut -d' ' -f1 | grep -q '^3640a8a6d6c6ac1916c87332f6db33ce1d494fa1ac7c4745cab6ba2f26b0f535\$'")
set_tests_properties(verify_valid_scene_hash PROPERTIES  DEPENDS "render_valid_scene" _BACKTRACE_TRIPLES "/app/CMakeLists.txt;35;add_test;/app/CMakeLists.txt;0;")
add_test(run_with_wrong_path "/app/raytracer" "./scenes/nonexistent-file.json")
set_tests_properties(run_with_wrong_path PROPERTIES  PASS_REGULAR_EXPRESSION "Scene file not found at path: ./scenes/nonexistent-file.json" _BACKTRACE_TRIPLES "/app/CMakeLists.txt;40;add_test;/app/CMakeLists.txt;0;")
add_test(run_with_no_scene_file "/app/raytracer")
set_tests_properties(run_with_no_scene_file PROPERTIES  WILL_FAIL "False" _BACKTRACE_TRIPLES "/app/CMakeLists.txt;44;add_test;/app/CMakeLists.txt;0;")
add_test(run_with_name "/app/raytracer" "./scenes/two-spheres-on-plane.json" "test.png")
set_tests_properties(run_with_name PROPERTIES  PASS_REGULAR_EXPRESSION "Writing file: test.png" _BACKTRACE_TRIPLES "/app/CMakeLists.txt;48;add_test;/app/CMakeLists.txt;0;")
add_test(render_invalid_scene "/app/raytracer" "./scenes/invalid-scene.json")
set_tests_properties(render_invalid_scene PROPERTIES  TIMEOUT "5" _BACKTRACE_TRIPLES "/app/CMakeLists.txt;52;add_test;/app/CMakeLists.txt;0;")
subdirs("src/raymath")
subdirs("src/rayimage")
subdirs("src/rayscene")
subdirs("src/lodepng")
