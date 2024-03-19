set(FFPLAY_SRC_LIST
    ${PROJECT_SOURCE_DIR}/fftools/ffplay.c
    ${PROJECT_SOURCE_DIR}/fftools/cmdutils.c
    ${PROJECT_SOURCE_DIR}/fftools/opt_common.c
    ${PROJECT_SOURCE_DIR}/fftools/ffplay_renderer.c
)

find_package(SDL2 CONFIG REQUIRED)
add_executable(ffplay ${FFPLAY_SRC_LIST})
target_include_directories(ffplay PRIVATE ${PROJECT_SOURCE_DIR})
target_link_libraries(ffplay PRIVATE
    postproc swscale swresample avfilter avdevice avformat avcodec avutil
    $<TARGET_NAME_IF_EXISTS:SDL2::SDL2main>
    $<IF:$<TARGET_EXISTS:SDL2::SDL2>,SDL2::SDL2,SDL2::SDL2-static>
)