# It runs parflow using python and the demo.py program.
# The demo.py program uses subsettools to download input files for a HUC and runs parflow.
#
# The parflow input and output files are stored in the directory called demo in this dirctory.


if [ -z "$HF_EMAIL" ]; then
    echo "HF_EMAIL is not set. Please set it before proceeding."
    exit 0
fi
if [ -z "$HF_PIN" ]; then
    echo "HF_PIN is not set. Please set it before proceeding."
    exit 0
fi

python demo.py
tar -czf output.tar.gz demo/*.out.*

