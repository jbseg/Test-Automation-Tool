# Test Automation Tool
a shell script that runs all your tests and sees how many lines of your code they covered

## Personalize
1. Change line 3 to include a list of files you want to see how much they cover
2. Change lines 6 and 7 to the correct file extensions for the correct output and output
    1. currently if you have test.uc
    2. the correct file is test.out.correct
    3. the outputs file is test.out

## How to run
```
$ pip install coverage
$ chmod +x test.sh
$ ./test.sh
```

## Example Output
```
$ ./test.sh
tests/structTest4.uc ❌
cant find tests/typeCompatibility4Test.out.correct ❌
tests/typeCompatibilityTest1.uc ✅
tests/typeCompatibilityTest2.uc ✅
tests/typeCompatibilityTest3.uc ✅
tests/type_clash_user.uc ✅
tests/unaryNode.uc ❌
tests/unknown_function.uc ✅
tests/unknown_type.uc ✅
tests/use_before_decl.uc ✅
tests/variable_clash.uc ✅
tests/voidTest.uc ✅
Name             Stmts   Miss  Cover   Missing
----------------------------------------------
ucbase.py          243     38    84%   111, 133, 137, 174, 185-187, 224-227, 277, 300, 347, 445, 579-584, 595-621
ucexpr.py          327      0   100%
ucfunctions.py      55      2    96%   29, 37
ucstmt.py           75      1    99%   148
uctypes.py          65      3    95%   23, 64, 103
----------------------------------------------
TOTAL              765     44    94%
```
it first compares all the test files to their correct output and simultaneuosly runs coverage on all of them. For more coverage documentation click [here](https://coverage.readthedocs.io/en/v4.5.x/)

If there are any mistakes or improvements I can make please let me know!! :)
