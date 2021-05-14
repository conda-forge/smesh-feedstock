cd SMESH/test
mkdir build
cd build

cmake -G "Ninja" \
      -D CMAKE_BUILD_TYPE:STRING="Release" \
      -D CMAKE_INSTALL_PREFIX:FILEPATH=$PREFIX \
      -D CMAKE_PREFIX_PATH:FILEPATH=$PREFIX \
      ..

ninja install

cd ..
cd tests
./test_Catch
if [[ ${HOST} =~ .*apple.* ]]
then
    echo "Skipping SMESH tests on OSX until they are fixed..."
else
    ./test_StdMeshers
    ./test_NETGENPlugin
fi
