#!/bin/bash

declare -i total=3
declare -i passed=0

out1=$( ../src/replspace test_dir )

if [[ "$out1" == "Couldn't rename 'test_dir/foo bar.txt' to 'test_dir/foo_bar.txt' because 'test_dir/foo_bar.txt' already exists." ]]
then
    passed=$(( passed + 1 ))
else
    echo "AAAAAAA"
fi

out2=$( ../src/replspace foo/ )
if [[ "$out2" == "ERROR: Directory foo/ not found." ]]
then
    passed=$(( passed + 1 ))
else
    echo "AAAAAAA"
fi
out3=$( ../src/replspace foo bar foobar )
if [[ "$out3" == "Usage: replspace <directory-name>" ]]
then
    passed=$((passed + 1 ))
else
    echo "AAAAAAA"
fi

echo "Test passed: $passed/$total "
if [[ $passed -eq 3 ]]
then
  echo "All tests passed."
else
  echo "Some tests failed."
fi
