if [[ $target_platform == linux-aarch64 ]]; then
    echo "tests are not yet working"
    exit 0
fi

if [[ $target_platform == linux-ppc64le ]]; then
    echo "tests are not yet working"
    exit 0
fi

declare -a CMAKE_PLATFORM_FLAGS
# cross-linux.cmake is copied from recipe/ to test dir (RECIPE_DIR not set in rattler-build)
TOOLCHAIN_FILE="${RECIPE_DIR:-$(pwd)}/cross-linux.cmake"
if [[ ${HOST} =~ .*linux.* ]] && [[ -f "$TOOLCHAIN_FILE" ]]; then
    CMAKE_PLATFORM_FLAGS+=(-DCMAKE_TOOLCHAIN_FILE="$TOOLCHAIN_FILE")
fi

cmake -G "Ninja" \
      -B test/build -S test/. \
      -D CMAKE_BUILD_TYPE:STRING="Release" \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      ${CMAKE_PLATFORM_FLAGS[@]} \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX

ninja -C test/build install

./test/tests/test_Catch
./test/tests/test_StdMeshers
./test/tests/test_NETGENPlugin
./test/tests/test_MEFISTO2
