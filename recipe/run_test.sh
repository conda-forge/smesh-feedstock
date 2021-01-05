cd SMESH/test
mkdir build
cd build

cmake -G "Ninja" \
      -D CMAKE_BUILD_TYPE:STRING="Release" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      -D CMAKE_CXX_STANDARD=14 \
      ..

ninja install

cd ..
cd tests
./test_Netgen
