mkdir -p build
cd build

if [ `uname` = "Darwin" ]; then
      ln -s /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk
      ln -s /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk /Applications/Xcode_11.3.1.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk
      cpp_std=14
else
      cpp_std=17
      sed -i 's#/home/conda/feedstock_root/build_artifacts/vtk_.*_build_env/x86_64-conda_cos6-linux-gnu/sysroot/usr/include##g' ${PREFIX}/lib/cmake/vtk-9.0/VTK-targets-release.cmake
      sed -i 's#/home/conda/feedstock_root/build_artifacts/vtk_.*_build_env/x86_64-conda_cos6-linux-gnu/sysroot/usr/lib.*;##g' ${PREFIX}/lib/cmake/vtk-9.0/VTK-targets-release.cmake
      sed -i 's#/home/conda/feedstock_root/build_artifacts/vtk_.*_build_env/x86_64-conda_cos6-linux-gnu/sysroot/usr/lib.*;##g' ${PREFIX}/lib/cmake/vtk-9.0/VTK-targets.cmake
      sed -i '381d' ${PREFIX}/lib/cmake/vtk-9.0/VTK-targets.cmake
      sed -i '383d' ${PREFIX}/lib/cmake/vtk-9.0/VTK-targets.cmake
fi

cmake -G "Ninja" \
      -D CMAKE_BUILD_TYPE:STRING="Release" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      -D Boost_NO_BOOST_CMAKE:BOOL=ON \
      -D CMAKE_CXX_STANDARD=${cpp_std} \
      -D ENABLE_MED:BOOL=OFF \
      -D ENABLE_NETGEN:BOOL=ON \
      ..

ninja install
