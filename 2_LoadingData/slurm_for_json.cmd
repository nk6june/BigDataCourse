#!/bin/bash

#SBATCH -N 1
#SBATCH -t 00:05:00
#SBATCH --ntasks-per-node 2
#SBATCH --cpus-per-task 3
#SBATCH --reservation root_21

module load python
module load spark/hadoop2.6/2.1.0
spark-start
echo $MASTER

spark-submit --total-executor-cores 6 load_json.py