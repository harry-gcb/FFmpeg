set(AVFILTER_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libavfilter/version.c
)

add_library(avfilter STATIC ${AVFILTER_SRC_LIST})
target_include_directories(avfilter PUBLIC ${PROJECT_SOURCE_DIR})
