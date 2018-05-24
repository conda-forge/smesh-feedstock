mkdir -p build
cd build

if [ `uname` = "Darwin" ]; then
    sed -i '' 's/Xcode-9.app/Xcode.app/g' $PREFIX/lib/cmake/opencascade/OpenCASCADEVisualizationTargets.cmake
fi

if [ `uname` = "Darwin" ]; then
	BUILD_WITH_NETGEN=OFF
else
	BUILD_WITH_NETGEN=ON
fi

cmake -G "Ninja" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      -D CMAKE_SYSTEM_PREFIX_PATH:FILEPATH=$PREFIX \
      -D CMAKE_CXX_FLAGS="-std=c++11" \
      -D ENABLE_MED:BOOL=OFF \
      -D ENABLE_NETGEN:BOOL=$BUILD_WITH_NETGEN \
      ..

ninja install