####
# Script to build parflow from source on verde
####


cd $PARFLOW_BUILD_DIR
mkdir build
cd build/
cmake .. \
    -DCMAKE_C_FLAGS="-Wno-int-conversion" \
    -DCMAKE_INSTALL_PREFIX=$PARFLOW_DIR             \
    -DHYPRE_ROOT=$HYPRE_DIR                         \
    -DPARFLOW_ENABLE_PYTHON=TRUE                    \
    -DPARFLOW_HAVE_CLM=TRUE                         \
    -DCMAKE_BUILD_TYPE=Release                      \
    -DPARFLOW_AMPS_LAYER=mpi1                       \
    -DPARFLOW_AMPS_SEQUENTIAL_IO=ON                 \
    -DPARFLOW_ENABLE_HYPRE=ON                       \
    -DPARFLOW_ENABLE_SIMULATOR=ON                   \
    -DPARFLOW_ENABLE_SZLIB=ON                       \
    -DPARFLOW_ENABLE_TOOLS=ON                       \
    -DPARFLOW_ENABLE_ZLIB=ON

make
make install
