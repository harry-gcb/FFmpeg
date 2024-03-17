add_compile_options("$<$<C_COMPILER_ID:MSVC>:/utf-8>")
add_compile_options("$<$<CXX_COMPILER_ID:MSVC>:/utf-8>")

include(check.cmake)

set(FFMPEG_VERSION "\"git-${GIT_LAST_COMMIT_DATE}-{GIT_COMMIT_HASH}\"")
set(FFMPEG_LICENSE "\"GPL\"")
set(FFMPEG_CONFIGURATION "\"Cmake Build\"")
set(FFMPEG_DATADIR "\"${CMAKE_CURRENT_BINARY_DIR}\"")
set(CC_IDENT "\"${CMAKE_GENERATOR_TOOLSET}\"")
set(CONFIG_THIS_YEAR "${CURRENT_YEAR}")

set(CONFIG_AVUTIL 1)
set(CONFIG_AVCODEC 1)
set(CONFIG_AVFORMAT 1)


if (CONFIG_AVDEVICE)
    set(CONFIG_AVDEVICE 1)
else()
    set(CONFIG_AVDEVICE 0)
endif()

if (CONFIG_AVFILTER)
    set(CONFIG_AVFILTER 1)
else()
    set(CONFIG_AVFILTER 0)
endif()

if (CONFIG_SWSCALE)
    set(CONFIG_SWSCALE 1)
else()
    set(CONFIG_SWSCALE 0)
endif()

if (CONFIG_SWRESAMPLE)
    set(CONFIG_SWRESAMPLE 1)
else()
    set(CONFIG_SWRESAMPLE 0)
endif()

if (CONFIG_POSTPROC)
    set(CONFIG_POSTPROC 1)
else()
    set(CONFIG_POSTPROC 0)
endif()

if (HAVE_MATH_H)
    set(HAVE_ISNAN 1)
    set(HAVE_ISFINITE 1)
else()
    set(HAVE_ISNAN 0)
    set(HAVE_ISFINITE 0)
endif()

# TODO
set(HAVE_PTHREADS 0)
set(HAVE_W32THREADS 1)
set(HAVE_OS2THREADS 0)
set(HAVE_THREADS 1)
set(ARCH_X86 0)
set(ARCH_X86_32 0)
set(ARCH_X86_64 0)
set(HAVE_PRAGMA_DEPRECATED 0)
set(CONFIG_MEMORY_POISONING 0)
set(CONFIG_FRAME_THREAD_ENCODER 0)
set(CONFIG_GRAY 0)
set(HAVE_DOS_PATHS 0)
set(HAVE_FAST_CLZ 0)
set(HAVE_FAST_UNALIGNED 0)
set(CONFIG_ZLIB 0)


if (IS_BIG_ENDIAN)
    set(AV_HAVE_BIGENDIAN 1)
else()
    set(AV_HAVE_BIGENDIAN 0)
endif()

if (IS_FAST_UNALIGNED_SUPPORTED)
    set(AV_HAVE_FAST_UNALIGNED 1)
else()
    set(AV_HAVE_FAST_UNALIGNED 0)
endif()


configure_file(${PROJECT_SOURCE_DIR}/config/avutil.version.h.in ${PROJECT_SOURCE_DIR}/libavutil/ffversion.h)
configure_file(${PROJECT_SOURCE_DIR}/config/avutil.config.h.in ${PROJECT_SOURCE_DIR}/libavutil/avconfig.h)

configure_file(${PROJECT_SOURCE_DIR}/config/avcodec.parser_list.c.in ${PROJECT_SOURCE_DIR}/libavcodec/parser_list.c)
configure_file(${PROJECT_SOURCE_DIR}/config/avcodec.bsf_list.c.in ${PROJECT_SOURCE_DIR}/libavcodec/bsf_list.c)
configure_file(${PROJECT_SOURCE_DIR}/config/avcodec.codec_list.c.in ${PROJECT_SOURCE_DIR}/libavcodec/codec_list.c)

configure_file(${PROJECT_SOURCE_DIR}/config/avformat.muxer_list.c.in ${PROJECT_SOURCE_DIR}/libavformat/muxer_list.c)
configure_file(${PROJECT_SOURCE_DIR}/config/avformat.demuxer_list.c.in ${PROJECT_SOURCE_DIR}/libavformat/demuxer_list.c)
configure_file(${PROJECT_SOURCE_DIR}/config/avformat.protocol_list.c.in ${PROJECT_SOURCE_DIR}/libavformat/protocol_list.c)

configure_file(${PROJECT_SOURCE_DIR}/config/config.h.in ${PROJECT_SOURCE_DIR}/config.h)
configure_file(${PROJECT_SOURCE_DIR}/config/config_components.h.in ${PROJECT_SOURCE_DIR}/config_components.h)