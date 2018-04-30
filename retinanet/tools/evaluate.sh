#!/usr/bin/env bash

TEST_ROI='rois_test.bin'
PREDICT_ROI='rois_retinanet.bin'
RESULT_FILE='statistics.txt'

echo 'Parameters:'
echo 'TEST_ROI:' $TEST_ROI
echo 'PREDICT_ROI:' $PREDICT_ROI
echo 'RESULT_FILE:' $RESULT_FILE
echo '------------------------------------'

PYTHONPATH=../../:../../apollo_python_common/protobuf/:$PYTHONPATH
export PYTHONPATH

python -u ../../apollo_python_common/generate_model_statistics.py \
    --expected_rois_file $TEST_ROI \
    --actual_rois_file $PREDICT_ROI \
    --result_file $RESULT_FILE
