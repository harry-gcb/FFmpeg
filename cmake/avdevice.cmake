set(AVDEVICE_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libavdevice/version.c
)

add_library(avdevice STATIC ${AVDEVICE_SRC_LIST})
target_include_directories(avdevice PUBLIC ${PROJECT_SOURCE_DIR})
