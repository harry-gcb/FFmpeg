set(AVUTIL_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libavutil/version.c
    ${PROJECT_SOURCE_DIR}/libavutil/pixdesc.c
    ${PROJECT_SOURCE_DIR}/libavutil/parseutils.c
    ${PROJECT_SOURCE_DIR}/libavutil/time.c
    ${PROJECT_SOURCE_DIR}/libavutil/avstring.c
    ${PROJECT_SOURCE_DIR}/libavutil/random_seed.c
    ${PROJECT_SOURCE_DIR}/libavutil/eval.c
    ${PROJECT_SOURCE_DIR}/libavutil/rational.c
    ${PROJECT_SOURCE_DIR}/libavutil/sha.c
    ${PROJECT_SOURCE_DIR}/libavutil/mem.c
    ${PROJECT_SOURCE_DIR}/libavutil/mathematics.c
    ${PROJECT_SOURCE_DIR}/libavutil/intmath.c
    ${PROJECT_SOURCE_DIR}/libavutil/reverse.c
    ${PROJECT_SOURCE_DIR}/libavutil/log2_tab.c
    ${PROJECT_SOURCE_DIR}/libavutil/cpu.c
    ${PROJECT_SOURCE_DIR}/libavutil/log.c
    ${PROJECT_SOURCE_DIR}/libavutil/channel_layout.c
    ${PROJECT_SOURCE_DIR}/libavutil/bprint.c
    ${PROJECT_SOURCE_DIR}/libavutil/imgutils.c
    ${PROJECT_SOURCE_DIR}/libavutil/samplefmt.c
    ${PROJECT_SOURCE_DIR}/libavutil/hash.c
    ${PROJECT_SOURCE_DIR}/libavutil/opt.c
    ${PROJECT_SOURCE_DIR}/libavutil/base64.c
    ${PROJECT_SOURCE_DIR}/libavutil/sha512.c
    ${PROJECT_SOURCE_DIR}/libavutil/ripemd.c
    ${PROJECT_SOURCE_DIR}/libavutil/murmur3.c
    ${PROJECT_SOURCE_DIR}/libavutil/md5.c
    ${PROJECT_SOURCE_DIR}/libavutil/crc.c
    ${PROJECT_SOURCE_DIR}/libavutil/mastering_display_metadata.c
    ${PROJECT_SOURCE_DIR}/libavutil/utils.c
    ${PROJECT_SOURCE_DIR}/libavutil/frame.c
    ${PROJECT_SOURCE_DIR}/libavutil/dict.c
    ${PROJECT_SOURCE_DIR}/libavutil/hwcontext.c
    ${PROJECT_SOURCE_DIR}/libavutil/slicethread.c
    ${PROJECT_SOURCE_DIR}/libavutil/avsscanf.c
    ${PROJECT_SOURCE_DIR}/libavutil/adler32.c
    ${PROJECT_SOURCE_DIR}/libavutil/buffer.c
    ${PROJECT_SOURCE_DIR}/libavutil/iamf.c
    ${PROJECT_SOURCE_DIR}/libavutil/error.c
    ${PROJECT_SOURCE_DIR}/libavutil/spherical.c
    ${PROJECT_SOURCE_DIR}/libavutil/timecode.c
    ${PROJECT_SOURCE_DIR}/libavutil/display.c
    ${PROJECT_SOURCE_DIR}/libavutil/stereo3d.c
    ${PROJECT_SOURCE_DIR}/libavutil/fifo.c
    ${PROJECT_SOURCE_DIR}/libavutil/tx.c
    # ${PROJECT_SOURCE_DIR}/libavutil/tx_template.c
    ${PROJECT_SOURCE_DIR}/libavutil/tx_float.c
    ${PROJECT_SOURCE_DIR}/libavutil/tx_double.c
    ${PROJECT_SOURCE_DIR}/libavutil/tx_int32.c
    ${PROJECT_SOURCE_DIR}/libavutil/half2float.c
    ${PROJECT_SOURCE_DIR}/libavutil/threadmessage.c
)

add_library(avutil STATIC)
target_sources(avutil PRIVATE ${AVUTIL_SRC_LIST})
target_include_directories(avutil PUBLIC ${PROJECT_SOURCE_DIR})
if (WIN32)
    target_include_directories(avutil PUBLIC ${PROJECT_SOURCE_DIR}/compat/atomics/win32)
endif()
