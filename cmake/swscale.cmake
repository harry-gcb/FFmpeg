set(SWSCALE_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libswscale/version.c
    ${PROJECT_SOURCE_DIR}/libswscale/utils.c
    ${PROJECT_SOURCE_DIR}/libswscale/swscale.c
    ${PROJECT_SOURCE_DIR}/libswscale/slice.c
    ${PROJECT_SOURCE_DIR}/libswscale/vscale.c
    ${PROJECT_SOURCE_DIR}/libswscale/hscale.c
    ${PROJECT_SOURCE_DIR}/libswscale/gamma.c
    ${PROJECT_SOURCE_DIR}/libswscale/hscale_fast_bilinear.c
    ${PROJECT_SOURCE_DIR}/libswscale/input.c
    ${PROJECT_SOURCE_DIR}/libswscale/alphablend.c
    ${PROJECT_SOURCE_DIR}/libswscale/yuv2rgb.c
    ${PROJECT_SOURCE_DIR}/libswscale/output.c
    ${PROJECT_SOURCE_DIR}/libswscale/rgb2rgb.c
    ${PROJECT_SOURCE_DIR}/libswscale/options.c
    ${PROJECT_SOURCE_DIR}/libswscale/swscale_unscaled.c
)

add_library(swscale STATIC ${SWSCALE_SRC_LIST})
target_include_directories(swscale PUBLIC ${PROJECT_SOURCE_DIR})
if (WIN32)
    target_include_directories(swscale PUBLIC ${PROJECT_SOURCE_DIR}/compat/atomics/win32)
endif()
