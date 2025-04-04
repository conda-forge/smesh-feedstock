cmake -G "Ninja" \
      -B build -S . \
      -D CMAKE_BUILD_TYPE:STRING=$BUILD_TYPE \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      -D Boost_NO_BOOST_CMAKE:BOOL=ON \
      -D ENABLE_NETGEN:BOOL=ON

ninja -C build install
