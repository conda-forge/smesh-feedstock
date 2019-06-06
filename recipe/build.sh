mkdir -p build
cd build

# if [ `uname` = "Darwin" ]; then
#       cpp_std=14
# else
#       cpp_std=17
# fi

cmake -G "Ninja" \
      -D CMAKE_BUILD_TYPE:STRING="Release" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      -D Boost_INCLUDE_DIR:FILEPATH=$PREFIX/include/boost \
      -D ENABLE_MED:BOOL=OFF \
      -D ENABLE_NETGEN:BOOL=ON \
      ..

ninja install -v
