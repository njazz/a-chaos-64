cmake_minimum_required (VERSION 2.8)
# SET(CMAKE_CXX_FLAGS "-std=c++11")

project (a_chaos_64 C)

include_directories(./src)
include_directories(./src/extra)

if(APPLE)
add_definitions(-DMAC_VERSION)
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

include_directories(submodules/max-sdk/source/c74support/max-includes)

set (CMAKE_OSX_ARCHITECTURES "x86_64" "i386")

if (WIN32)

endif()

macro(a_chaos_external name_ext_)
    set(name_ ${name_ext_})
    set(obj_ "${name_ext_}")
    add_library(${name_} MODULE src/${name_}.c)

    if (WIN32)
        target_link_libraries(${name_} ${PROJECT_SOURCE_DIR}/submodules/max-sdk/source/c74support/max-includes/x64/MaxAPI.lib)
        # target_link_libraries(${name_} maxcrt.lib)
        # target_link_libraries(${name_} maxcrt_p.lib)
    endif()

    set_target_properties(${name_} PROPERTIES PREFIX "")
    set_target_properties(${name_} PROPERTIES BUNDLE TRUE)

    if (WIN32)
      set_target_properties(${name_} PROPERTIES BUNDLE_EXTENSION "mxe")
      set_target_properties(${name_} PROPERTIES SUFFIX ".mxe")

    else()
      set_target_properties(${name_} PROPERTIES SUFFIX ".mxo")
      set_target_properties(${name_} PROPERTIES BUNDLE_EXTENSION "mxo")
    endif()

    install(TARGETS ${name_} DESTINATION ${PROJECT_SOURCE_DIR}/bin)

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
