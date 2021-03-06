
# grid size
n1=1000
n2=1000
n3=1000

start_time=$(date)

# 32 threads
export KMP_AFFINITY=scatter,1,0,granularity=fine
export OMP_NUM_THREADS=32
srun -n 1 ../../bin/hpcscan -testCase Grid -dim 3 -n1 ${n1} -n2 ${n2} -n3 ${n3}

end_time=$(date)

echo '*** TEST ENDED ***'
echo "# Started  : " $start_time 
echo "# Ended    : " $end_time
echo "On machine : " `hostname`
echo "Done by    : " `whoami`
