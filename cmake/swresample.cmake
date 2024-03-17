set(SWRESAMPLE_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libswresample/version.c
)

add_library(swresample STATIC ${SWRESAMPLE_SRC_LIST})
target_include_directories(swresample PUBLIC ${PROJECT_SOURCE_DIR})
