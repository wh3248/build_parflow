###
### Set environment variable used to build parflow
###
export ROOT_DIR=$(dirname `pwd`)
export HYPRE_DIR="$ROOT_DIR/hypre"
export PARFLOW_BUILD_DIR="$ROOT_DIR/parflow_build"
export PARFLOW_DIR="$ROOT_DIR/parflow_install"
echo $ROOT_DIR
echo $HYPRE_DIR
echo $PARFLOW_BUILD_DIR
source ~/anaconda3/bin/activate 
module unload gcc/8
module load gcc-toolset/12
module load openmpi/gcc/4.1.6 

if [[ "$PATH" != *"$PARFLOW_DIR/bin"* ]]; then
    echo "PATH does not include $PARFLOW_DIR/bin. Adding it."
    export PATH="$PARFLOW_DIR/bin:$PATH"
fi

