git clone https://github.com/looooo/SMESH.git
cd SMESH
git checkout occt7.8.1
git submodule update --init --recursive
python prepare.py

mkdir build
cd build

cmake -G "Ninja" \
      -D CMAKE_BUILD_TYPE:STRING="Release" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      -D Boost_NO_BOOST_CMAKE:BOOL=ON \
      -D ENABLE_NETGEN:BOOL=ON \
      -D CMAKE_CXX_STANDARD=14 \
      ..

ninja install
