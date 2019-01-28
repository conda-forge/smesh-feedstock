mkdir -p build
cd build

cmake -G "Ninja" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      -D CMAKE_SYSTEM_PREFIX_PATH:FILEPATH=$PREFIX \
      -D CMAKE_CXX_STANDARD=14 \
      -D ENABLE_MED:BOOL=OFF \
      -D ENABLE_NETGEN:BOOL=ON \
      ..

ninja install -v