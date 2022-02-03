i=0
while [ $i -le 100 ]
do
    echo $i
    z3 smt.random_seed=$((i++)) $1
    echo
done
