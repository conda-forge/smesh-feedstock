mkdir -p build
cd build

if [ `uname` = "Darwin" ]; then
	FLAGS="-std=c++14"
else
	FLAGS="-std=c++11"
fi

cmake -G "Ninja" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      -D CMAKE_SYSTEM_PREFIX_PATH:FILEPATH=$PREFIX \
      -D CMAKE_CXX_FLAGS=$FLAGS \
      -D ENABLE_MED:BOOL=OFF \
      -D ENABLE_NETGEN:BOOL=ON \
      ..

ninja install