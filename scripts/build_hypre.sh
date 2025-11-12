####
# Script to build hype from source code
####

 mkdir -p $HYPRE_DIR
cd $HYPRE_DIR
curl -L https://github.com/hypre-space/hypre/archive/v2.17.0.tar.gz | tar --strip-components=1 -xzv && \
cd src && ./configure --prefix=$HYPRE_DIR --with-MPI && \
make install
