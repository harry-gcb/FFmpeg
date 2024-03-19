set(FFMPEG_SRC_LIST
    ${PROJECT_SOURCE_DIR}/fftools/ffmpeg.c
    ${PROJECT_SOURCE_DIR}/fftools/cmdutils.c
    ${PROJECT_SOURCE_DIR}/fftools/opt_common.c
    ${PROJECT_SOURCE_DIR}/fftools/ffmpeg_sched.c
    ${PROJECT_SOURCE_DIR}/fftools/ffmpeg_opt.c
    ${PROJECT_SOURCE_DIR}/fftools/ffmpeg_filter.c
    ${PROJECT_SOURCE_DIR}/fftools/ffmpeg_hw.c
    ${PROJECT_SOURCE_DIR}/fftools/ffmpeg_mux_init.c
    ${PROJECT_SOURCE_DIR}/fftools/ffmpeg_mux.c
    ${PROJECT_SOURCE_DIR}/fftools/ffmpeg_demux.c
    ${PROJECT_SOURCE_DIR}/fftools/ffmpeg_dec.c
    ${PROJECT_SOURCE_DIR}/fftools/ffmpeg_enc.c
    ${PROJECT_SOURCE_DIR}/fftools/sync_queue.c
    ${PROJECT_SOURCE_DIR}/fftools/thread_queue.c
    ${PROJECT_SOURCE_DIR}/fftools/objpool.c
)

add_executable(ffmpeg ${FFMPEG_SRC_LIST})
target_include_directories(ffmpeg PRIVATE ${PROJECT_SOURCE_DIR})
target_link_libraries(ffmpeg PRIVATE
    postproc swscale swresample avfilter avdevice avformat avcodec avutil
)