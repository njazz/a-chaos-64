cmake_minimum_required (VERSION 3.11)

# MAX SDK
if (NOT MAX_SDK_DIR)
message("MAX SDK Directory not specified, using ../max-sdk-8.2")
set(MAX_SDK_DIR ${CMAKE_SOURCE_DIR}/../max-sdk-8.2)
if(NOT EXISTS "${MAX_SDK_DIR}")
  message(FATAL "MAX SDK was not found at ${MAX_SDK_DIR}")
endif()
endif()

message("Using MAX SDK Folder: ${MAX_SDK_DIR}")

project (a_chaos_64 C)

if(APPLE)
add_definitions(-DMAC_VERSION)
add_definitions(-DSymbol=t_symbol -DAtom=t_atom)
SET (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -undefined dynamic_lookup")
# add_compile_options(-undefined dynamic_lookup)
SET (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -undefined dynamic_lookup")
endif()

if (WIN32)

add_definitions(-DWIN_VERSION)
add_definitions(-DNOMINMAX)
add_definitions(-DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=TRUE)

SET (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /EHsc")
SET (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /W0")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /FI${PROJECT_SOURCE_DIR}/src/extra/Types.h")
SET (LINK_FLAGS "${LINK_FLAGS} -shared --enable-auto-import")

endif()

# include_directories(submodules/max-sdk/source/c74support/max-includes)

set (CMAKE_OSX_ARCHITECTURES "x86_64" "arm64")

if (WIN32)

endif()

macro(a_chaos_external name_ext_)
    set(name_ ${name_ext_})
    set(obj_ "${name_ext_}")
    add_library(${name_} MODULE src/${name_}.c)

    target_include_directories(${name_} PRIVATE ${CMAKE_SOURCE_DIR}/src)
    target_include_directories(${name_} PRIVATE ${CMAKE_SOURCE_DIR}/src/extra)
    target_include_directories(${name_} PRIVATE ${MAX_SDK_DIR}/source/max-sdk-base/c74support/max-includes)

    if(NOT EXISTS "${MAX_SDK_DIR}/source/max-sdk-base/c74support/max-includes")
      message(FATAL "MAX SDK was not found at ${MAX_SDK_DIR}/source/max-sdk-base/c74support/max-includes")
    endif()

    if (WIN32)
        if(NOT EXISTS "${MAX_SDK_DIR}/source/max-sdk-base/c74support/max-includes/x64")
          message(FATAL "MAX SDK was not found at ${MAX_SDK_DIR}/source/max-sdk-base/c74support/max-includes/x64")
        endif()

        target_link_libraries(${name_} ${CMAKE_SOURCE_DIR}/source/max-sdk-base/c74support/max-includes/x64/MaxAPI.lib)
    endif()

    set_target_properties(${name_} PROPERTIES PREFIX "")
    set_target_properties(${name_} PROPERTIES BUNDLE TRUE)

    if (WIN32)
      set_target_properties(${name_} PROPERTIES BUNDLE_EXTENSION "mxe64")
      set_target_properties(${name_} PROPERTIES SUFFIX ".mxe64")

    else()
      set_target_properties(${name_} PROPERTIES SUFFIX ".mxo")
      set_target_properties(${name_} PROPERTIES BUNDLE_EXTENSION "mxo")
    endif()

    install(TARGETS ${name_} DESTINATION ${CMAKE_SOURCE_DIR}/bin)

    set_target_properties(${name_} PROPERTIES OUTPUT_NAME ${obj_})
endmacro(a_chaos_external)

a_chaos_external("a-baker")
a_chaos_external("a-clifford")
a_chaos_external("a-collatz")
a_chaos_external("a-duffing")
a_chaos_external("a-fibonacci")
a_chaos_external("a-ginger")
a_chaos_external("a-henon-heilles")
a_chaos_external("a-henon-phase")
a_chaos_external("a-henon")
a_chaos_external("a-henonf")
a_chaos_external("a-ikeda")
a_chaos_external("a-jong")
a_chaos_external("a-logistic")
a_chaos_external("a-logistic1")
a_chaos_external("a-lorenz")
a_chaos_external("a-lorenz.e")
a_chaos_external("a-lyapunov")
a_chaos_external("a-navier-stokes")
a_chaos_external("a-navier-stokes.e")
a_chaos_external("a-rossler")
a_chaos_external("a-stein")
a_chaos_external("a-stein1")
a_chaos_external("a-torus")
a_chaos_external("a-verhulst")
