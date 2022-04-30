cd SMESH/test
mkdir build
cd build

if [[ $target_platform != linux-aarch64 ]]; then
    echo "tests are not yet working"
    exit 1
fi

if [[ $target_platform != linux-ppc64le ]]; then
    echo "tests are not yet working"
    exit 1
fi

declare -a CMAKE_PLATFORM_FLAGS
if [[ ${HOST} =~ .*linux.* ]]; then
    CMAKE_PLATFORM_FLAGS+=(-DCMAKE_TOOLCHAIN_FILE="${RECIPE_DIR}/cross-linux.cmake")
fi

cmake -G "Ninja" \
      -D CMAKE_BUILD_TYPE:STRING="Release" \
      ${CMAKE_PLATFORM_FLAGS[@]} \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      ..

ninja install

cd ..
cd tests


./test_Catch
./test_StdMeshers
./test_NETGENPlugin
./test_MEFISTO2
