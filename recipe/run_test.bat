cmake -G "Ninja" ^
      -B test/build -S test/. ^
      -D CMAKE_BUILD_TYPE=Release ^
      -D CMAKE_PREFIX_PATH:FILEPATH="%LIBRARY_PREFIX%" ^
      -D CMAKE_SYSTEM_PREFIX_PATH:FILEPATH="%LIBRARY_PREFIX%" ^
      -D PTHREAD_INCLUDE_DIRS:FILEPATH="%LIBRARY_PREFIX%/include" ^
      -D PTHREAD_LIB_DIRS:FILEPATH="%LIBRARY_PREFIX%/lib" ^

if errorlevel 1 exit 1
ninja -C test/build install
if errorlevel 1 exit 1

test/tests/test_Catch.exe
test/tests/test_StdMeshers.exe
test/tests/test_NETGENPlugin.exe
test/tests/test_MEFISTO2.exe
