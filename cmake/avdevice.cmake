set(AVDEVICE_SRC_LIST
    ${PROJECT_SOURCE_DIR}/libavdevice/version.c
    ${PROJECT_SOURCE_DIR}/libavdevice/alldevices.c
    ${PROJECT_SOURCE_DIR}/libavdevice/avdevice.c
    ${PROJECT_SOURCE_DIR}/libavdevice/utils.c
)

add_library(avdevice STATIC ${AVDEVICE_SRC_LIST})
target_include_directories(avdevice PUBLIC ${PROJECT_SOURCE_DIR})
