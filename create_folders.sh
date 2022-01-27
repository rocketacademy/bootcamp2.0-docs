
for i in 1 2 3 4 5 6
do
    mkdir Module$i
    cd Module$i
    for j in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
    do
        mkdir day$j
        cd day$j
        touch README.md
        cd ..
    done
    cd ..
done 