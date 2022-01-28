from http import client
import numpy as np
import glob

def g_mean(x):
    a = np.log(x)
    return np.exp(a.mean())

pref_type = ["no",
           "D_JOLT",
           "D_JOLT_hist_-2",
           "D_JOLT_hist_-1",
           "D_JOLT_hist_+1",
           "D_JOLT_hist_+2",
           "D_JOLT_dist_-2",
           "D_JOLT_dist_-1",
           "D_JOLT_dist_+1",
           "D_JOLT_dist_+2",
           "D_JOLT_way2",
           "D_JOLT_way8",
           "D_JOLT_set05",
           "D_JOLT_set2",
           "EIP",
           "EIP_BBsize_1",
           "EIP_BBsize_2",
           "EIP_BBsize_3",
           "EIP_BBsize_4",
           "EIP_BBsize_5",
           "EIP_BBsize_6",
           "EIP_BBsize_8",
           "EIP_BBsize_9",
           "EIP_Conf_Th_2",
           "EIP_Conf_Th_3",
           "EIP_way14",
           "EIP_way71",
           "EIP_set7",
           "EIP_set9"]

bench = ["client",
         "server",
         "spec"]

client_gm = np.zeros((37,8))
server_gm = np.zeros((37,35))
spec_gm = np.zeros((37,7))
cm_gm = np.zeros((37,50))

out_file = open("./IPC.csv", "a")

out_file.write("Prefetcher,Client,Server,Spec,Culmulative\n")

prf = 0

for pref in pref_type:
    clnt = 0
    srvr = 0
    spc = 0
    cm = 0
    for bnh in bench:
        path = "results_50M/dpc3_traces/"+bnh+"*.champsimtrace.xz-hashed_perceptron-"+pref+"-next_line-spp_dev-no-lru-1core.txt"
        for filename in glob.glob(path):
            with open(filename, 'r') as f:
                for line in f.readlines():
                    if "CPU 0 cumulative IPC:" in line:
                        value = line.rstrip('\n').split()
                        cm_gm[prf][cm] = value[4]
                        cm = cm + 1
                        if bnh == "client":
                            client_gm[prf][clnt] = value[4]
                            clnt = clnt + 1
                        if bnh == "server":
                            server_gm[prf][srvr] = value[4]
                            srvr = srvr + 1
                        if bnh == "spec":
                            spec_gm[prf][spc] = value[4]
                            spc = spc + 1
    prf = prf + 1

for i in range(37):
    out_file.write(pref_type[i]+","+str(g_mean(client_gm[i]))+","+str(g_mean(server_gm[i]))+","+str(g_mean(spec_gm[i]))+","+str(g_mean(cm_gm[i]))+"\n")
