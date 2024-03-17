set(SWSCALE_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libswscale/version.c
)

add_library(swscale STATIC ${SWSCALE_SRC_LIST})
target_include_directories(swscale PUBLIC ${PROJECT_SOURCE_DIR})
