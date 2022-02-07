#/usr/bin/bash

# Usage: search_seeds.sh random_unsound_result_2.smt2

Z3='../z3/build/z3'

for ((i=0; i<100000; i++)); do
    $Z3 smt.random_seed=$i $1 | grep -q 'unsat' && echo $i
done
