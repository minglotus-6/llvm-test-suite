set(OPTFLAGS "${OPTFLAGS} -O3 -fomit-frame-pointer -flto=thin -DNDEBUG")
if(APPLE)
  set(OPTFLAGS "${OPTFLAGS} -mdynamic-no-pic")
endif()

set(CMAKE_C_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELEASE "${OPTFLAGS}" CACHE STRING "")
set(CMAKE_BUILD_TYPE "Release" CACHE STRING "")

set(TEST_SUITE_EXTRA_EXE_LINKER_FLAGS "${TEST_SUITE_EXTRA_EXE_LINKER_FLAGS} -fuse-ld=lld -Wl,-gc-sections -Wl,-z,keep-text-section-prefix" CACHE STRING "")