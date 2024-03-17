set(POSTPROC_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libpostproc/version.c
)

add_library(postproc STATIC ${POSTPROC_SRC_LIST})
target_include_directories(postproc PUBLIC ${PROJECT_SOURCE_DIR})
