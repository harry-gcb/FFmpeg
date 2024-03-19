set(SWRESAMPLE_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libswresample/version.c
    ${PROJECT_SOURCE_DIR}/libswresample/swresample.c
    ${PROJECT_SOURCE_DIR}/libswresample/dither.c
    ${PROJECT_SOURCE_DIR}/libswresample/resample.c
    ${PROJECT_SOURCE_DIR}/libswresample/audioconvert.c
    ${PROJECT_SOURCE_DIR}/libswresample/rematrix.c
    ${PROJECT_SOURCE_DIR}/libswresample/options.c
    ${PROJECT_SOURCE_DIR}/libswresample/resample_dsp.c
)

add_library(swresample STATIC ${SWRESAMPLE_SRC_LIST})
target_include_directories(swresample PUBLIC ${PROJECT_SOURCE_DIR})
