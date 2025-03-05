# dependencies

find_package(Threads REQUIRED)

# third-party

# ...

# examples

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

if (EMSCRIPTEN)
else()

    add_subdirectory(main)
    if (NOT GGML_BACKEND_DL)
        # these examples use the backends directly and cannot be built with dynamic loading
    endif()
endif()
