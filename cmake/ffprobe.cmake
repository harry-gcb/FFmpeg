set(FFPROBE_SRC_LIST
    ${PROJECT_SOURCE_DIR}/fftools/ffprobe.c
    ${PROJECT_SOURCE_DIR}/fftools/cmdutils.c
    ${PROJECT_SOURCE_DIR}/fftools/opt_common.c
)

add_executable(ffprobe ${FFPROBE_SRC_LIST})
target_include_directories(ffprobe PRIVATE ${PROJECT_SOURCE_DIR})
target_link_libraries(ffprobe PRIVATE postproc swscale swresample avfilter avdevice avformat avcodec avutil)