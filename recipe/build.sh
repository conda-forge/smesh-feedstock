mkdir -p build
cd build

if [ `uname` = "Darwin" ]; then
      cpp_std=""
      sed -i '' 's/Xcode-9.app/Xcode.app/g' $PREFIX/lib/cmake/opencascade/OpenCASCADEVisualizationTargets.cmake
else
      cpp_std=17
fi

cmake -G "Ninja" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      -D CMAKE_SYSTEM_PREFIX_PATH:FILEPATH=$PREFIX \
      -D CMAKE_CXX_STANDARD=${cpp_std} \
      -D ENABLE_MED:BOOL=OFF \
      -D ENABLE_NETGEN:BOOL=ON \
      ..

ninja install -v
