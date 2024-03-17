set(AVCODEC_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libavcodec/bsf.c
    ${PROJECT_SOURCE_DIR}/libavcodec/codec_par.c
    ${PROJECT_SOURCE_DIR}/libavcodec/pthread.c
    ${PROJECT_SOURCE_DIR}/libavcodec/avcodec.c
    ${PROJECT_SOURCE_DIR}/libavcodec/avpacket.c
    ${PROJECT_SOURCE_DIR}/libavcodec/refstruct.c
    ${PROJECT_SOURCE_DIR}/libavcodec/pthread_slice.c
    ${PROJECT_SOURCE_DIR}/libavcodec/frame_thread_encoder.c
    ${PROJECT_SOURCE_DIR}/libavcodec/encode.c
    ${PROJECT_SOURCE_DIR}/libavcodec/parser.c
    ${PROJECT_SOURCE_DIR}/libavcodec/get_buffer.c
    ${PROJECT_SOURCE_DIR}/libavcodec/parsers.c
    ${PROJECT_SOURCE_DIR}/libavcodec/raw.c
    ${PROJECT_SOURCE_DIR}/libavcodec/version.c
    ${PROJECT_SOURCE_DIR}/libavcodec/bitstream_filters.c
    ${PROJECT_SOURCE_DIR}/libavcodec/codec_desc.c
    ${PROJECT_SOURCE_DIR}/libavcodec/profiles.c
    ${PROJECT_SOURCE_DIR}/libavcodec/utils.c
    ${PROJECT_SOURCE_DIR}/libavcodec/decode.c
    ${PROJECT_SOURCE_DIR}/libavcodec/options.c
    ${PROJECT_SOURCE_DIR}/libavcodec/allcodecs.c
    ${PROJECT_SOURCE_DIR}/libavcodec/pthread_frame.c
)

add_library(avcodec STATIC ${AVCODEC_SRC_LIST})
target_include_directories(avcodec PUBLIC ${PROJECT_SOURCE_DIR})
if (WIN32)
    target_include_directories(avcodec PRIVATE ${PROJECT_SOURCE_DIR}/compat/atomics/win32)
endif()
