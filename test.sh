#!/bin/bash

coverage run --include=ucbase.py,ucexpr.py,ucfunctions.py,ucstmt.py,uctypes.py > /dev/null 2>&1
for f in tests/*.uc; do
    # take substring of file and add on correct file extension
    f_correct="${f:0:${#f}-2}out.correct"
    # include the files you want
    coverage run -a --include=ucbase.py,ucexpr.py,ucfunctions.py,ucstmt.py,uctypes.py ucc.py -S -T $f > "${f:0:${#f}-2}out"
    if [ -f "$f_correct" ]; then
        if [[ $(diff "${f:0:${#f}-2}out" $f_correct) == "" ]]; then
            echo $f ✅
        else
            echo $f ❌
        fi
    else
        echo cant find $f_correct ❌
    fi;
done;
coverage report -m
