set(CMAKE_CXX_STANDART 20)
set(CMAKE_CXX_STANDERT_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)


if(WIN32)
   
   add_compile_options($<$<CXX_COMPILER_ID:MSVC>:/MP>)
   set(PLATFORM_WIN32 TRUE CACHE INTERNAL "Target platform: Win32")
   message("Target platform: Win32. SDK Version: " ${CMAKE_SYSTEM_VERSION})
endif()

if(PLATFORM_WIN32)
    set(GLOBAL_COMPILE_DEFINITIONS NOMINMAX _WIN32_WINNT=0x0A00)
endif()

add_compile_definitions(${GLOBAL_COMPILE_DEFINITIONS})