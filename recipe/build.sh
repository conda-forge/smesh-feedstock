git clone --recurse-submodules https://github.com/trelau/SMESH.git
cd SMESH
git checkout v9.6.0.2
python prepare.py

mkdir build
cd build


declare -a CMAKE_PLATFORM_FLAGS

if [[ ${HOST} =~ .*darwin.* ]]; then
      CMAKE_PLATFORM_FLAGS+=(-DCMAKE_CXX_FLAGS="-O1")
fi

cmake -G "Ninja" \
      -D CMAKE_BUILD_TYPE:STRING="Release" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      -D Boost_NO_BOOST_CMAKE:BOOL=ON \
      -D ENABLE_MED:BOOL=OFF \
      -D ENABLE_NETGEN:BOOL=ON \
      -D CMAKE_CXX_STANDARD=14 \
      ${CMAKE_PLATFORM_FLAGS[@]} \
      ..

ninja install
