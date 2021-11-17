git clone --recurse-submodules https://github.com/trelau/SMESH.git
cd SMESH
git checkout v9.7.0.1
# Get a newer version of Netgen that supports occt 7.6
cd external/Netgen
git checkout v6.2.2105
cd ../..
python prepare.py

mkdir build
cd build

cmake -G "Ninja" \
      -D CMAKE_BUILD_TYPE:STRING="Release" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      -D Boost_NO_BOOST_CMAKE:BOOL=ON \
      -D ENABLE_MED:BOOL=OFF \
      -D ENABLE_NETGEN:BOOL=ON \
      -D CMAKE_CXX_STANDARD=14 \
      ..

ninja install
