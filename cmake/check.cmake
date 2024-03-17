include(CheckIncludeFile)

check_include_file("math.h" HAVE_MATH_H)
check_include_file("pthread.h" HAVE_PTHREAD_H)
check_include_file("windows.h" HAVE_WINDOWS_H)
check_include_file("os2.h" HAVE_OS2_H)

# 执行Git命令获取提交hash
execute_process(
    COMMAND git rev-parse --short HEAD
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
    OUTPUT_VARIABLE GIT_COMMIT_HASH
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

# 执行Git命令获取当前分支名称
execute_process(
    COMMAND git describe --abbrev=0 --tags
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
    OUTPUT_VARIABLE GIT_LATEST_TAG
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

# 执行命令获取最新一次的提交时间
execute_process(
    COMMAND git log -1 --date=short --format=%cd
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
    OUTPUT_VARIABLE GIT_LAST_COMMIT_DATE
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

string(TIMESTAMP CURRENT_YEAR "%Y")