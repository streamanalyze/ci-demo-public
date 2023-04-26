#!/bin/bash

TESTCMD="./sa.engine/bin/sa.engine -f SA -o 'test_model(\"my-model\")' -o 'quit;' ";

copy-to-pi.sh SA
execute-on-pi.sh "$TESTCMD"