<p align="center">
  <h1 align="center"> CSE240C_WI22_PA1 </h1>
</p>

# Clone this repository
```
git clone https://github.com/Arpan-Shankar-Dutta/CSE240C_WI22_PA1.git
```

# Important directories

1. ```dpc3_traces``` contains all the championship traces.
2. ```results_50M/dpc3_traces``` contains all results of all the simulations.
3. ```prefetcher``` contains all the ```.li1_pref``` files that were created to be used for the simulations. The ```.li1_pref``` files is where the prefetcher parameters are located, which are changed for the design space and size explorations of all the prefetchers.
5. All simulations were run on all 50 traces. All simulation used 50M instructions for warmup and 50M actual instructions on which the IPC and MPKI was calculated.

# Instructions for running and reproducing the data

1. Run ```./build_all.sh```. This compiles all the source files.
2. Run ```./run_all.sh```. This will run all simulations in parallel.
3. Run ```python3 parse.py```. This is python script for collecting all data and geometric means for all the simulations. It provides separate IPC geo-means of all the prefetcher configurations for client, server and spec workloads separately and a cumulative geo-mean for all workloads taken together. The file ```IPC.csv``` is the output of the script.
