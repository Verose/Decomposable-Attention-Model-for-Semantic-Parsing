# Run this script from the root of the project
BASE_DIR=$(cd $(dirname $0);pwd -P)
export STRONGSUP_DIR=$BASE_DIR/data
echo "=================== Start running script ==================="
PYTHONPATH=$BASE_DIR:$BASE_DIR/third-party/gtd/ python $BASE_DIR/scripts/main.py $BASE_DIR/configs/rlong/best-tangrams.txt
echo "=================== Finish running script ==================="