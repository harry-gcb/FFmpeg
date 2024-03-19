set(AVFORMAT_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libavformat/version.c
    ${PROJECT_SOURCE_DIR}/libavformat/protocols.c
    ${PROJECT_SOURCE_DIR}/libavformat/allformats.c
    ${PROJECT_SOURCE_DIR}/libavformat/format.c
    ${PROJECT_SOURCE_DIR}/libavformat/avio.c
    ${PROJECT_SOURCE_DIR}/libavformat/avformat.c
    ${PROJECT_SOURCE_DIR}/libavformat/aviobuf.c
    ${PROJECT_SOURCE_DIR}/libavformat/options.c
    ${PROJECT_SOURCE_DIR}/libavformat/id3v2.c
    ${PROJECT_SOURCE_DIR}/libavformat/id3v1.c
    ${PROJECT_SOURCE_DIR}/libavformat/metadata.c
    ${PROJECT_SOURCE_DIR}/libavformat/demux_utils.c
    ${PROJECT_SOURCE_DIR}/libavformat/utils.c
    ${PROJECT_SOURCE_DIR}/libavformat/demux.c
    ${PROJECT_SOURCE_DIR}/libavformat/url.c
    ${PROJECT_SOURCE_DIR}/libavformat/seek.c
    ${PROJECT_SOURCE_DIR}/libavformat/dump.c
    ${PROJECT_SOURCE_DIR}/libavformat/mux.c
    ${PROJECT_SOURCE_DIR}/libavformat/sdp.c
    ${PROJECT_SOURCE_DIR}/libavformat/mux_utils.c
)

add_library(avformat STATIC)
target_include_directories(avformat PUBLIC ${PROJECT_SOURCE_DIR})
target_sources(avformat PRIVATE ${AVFORMAT_SRC_LIST})
if (WIN32)
    target_include_directories(avformat PUBLIC ${PROJECT_SOURCE_DIR}/compat/atomics/win32)
endif()