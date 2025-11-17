######
# Run the parflow unit tests using the parflow built by these scripts.
# This assumes that you previously executed
#.    source setup_env_vars.sh
#.    bash build_hypre.sh
#.    bash download_source.sh
#.    bash build_parflow.sh
# Note you can use git checkout to checkout a different branch of parflow before running tests
# Just make sure you already ran download_source.sh then use
#.    cd $PARFLOW_BUILD_DIR
#.    git checkout branchname
#####
cd $PARFLOW_BUILD_DIR/build
#ctest -R overland_flux_validation$
#ctest -R overland_FlatICP$
ctest
echo Output in $PARFLOW_BUILD_DIR/build/Testing/Temporary/LastTest.log
