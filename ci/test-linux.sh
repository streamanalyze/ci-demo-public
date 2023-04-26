#!/bin/bash
export SA_STDIN_DISABLED=1 # ensure that we dont try reading from stdin - that would return success if entering a break loop
./sa.engine/bin/sa.engine -f SA -o "test_model('my-model')" -o "quit;" 

# ./sa.engine/bin/sa.engine   : call the sa.engine instance we installed
# -f SA                       : set the SA_HOME of this sa.engine run to the SA folder we checked out
# -o "test_model('my-model')" : run the command test_model('my-model'), this will load my-model and run all osql in test.osql
# -o "quit;"                  : close sa.engine with an exit code. This is important to make the test run fail if any validate fails.
