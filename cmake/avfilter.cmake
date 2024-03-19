set(AVFILTER_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libavfilter/version.c
    ${PROJECT_SOURCE_DIR}/libavfilter/avfilter.c
    ${PROJECT_SOURCE_DIR}/libavfilter/video.c
    ${PROJECT_SOURCE_DIR}/libavfilter/framepool.c
    ${PROJECT_SOURCE_DIR}/libavfilter/avfiltergraph.c
    ${PROJECT_SOURCE_DIR}/libavfilter/formats.c
    ${PROJECT_SOURCE_DIR}/libavfilter/framequeue.c
    ${PROJECT_SOURCE_DIR}/libavfilter/pthread.c
    ${PROJECT_SOURCE_DIR}/libavfilter/audio.c
    ${PROJECT_SOURCE_DIR}/libavfilter/buffersink.c
    ${PROJECT_SOURCE_DIR}/libavfilter/buffersrc.c
    ${PROJECT_SOURCE_DIR}/libavfilter/graphparser.c
    ${PROJECT_SOURCE_DIR}/libavfilter/allfilters.c
)

add_library(avfilter STATIC ${AVFILTER_SRC_LIST})
target_include_directories(avfilter PUBLIC ${PROJECT_SOURCE_DIR})
