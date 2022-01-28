pref_type=(
    "no"
    "D_JOLT"
    "D_JOLT_hist_-1"
    "D_JOLT_hist_-2"
    "D_JOLT_hist_+1"
    "D_JOLT_hist_+2"
    "D_JOLT_dist_-1"
    "D_JOLT_dist_-2"
    "D_JOLT_dist_+1"
    "D_JOLT_dist_+2"
    "EIP"
    "EIP_BBsize_5"
    "EIP_BBsize_6"
    "EIP_BBsize_8"
    "EIP_BBsize_9"
    "EIP_Conf_Th_2"
    "EIP_Conf_Th_3"
    "EIP_BBsize_4"
    "EIP_BBsize_3"
    "EIP_BBsize_2"
    "EIP_BBsize_1"
    "EIP_way14"
    "EIP_way71"
    "EIP_set7"
    "EIP_set9"
    "D_JOLT_way2"
    "D_JOLT_way8"
    "D_JOLT_set2"
    "D_JOLT_set05")

for i in ${!pref_type[@]}; do
    ./build_champsim.sh hashed_perceptron ${pref_type[$i]} next_line spp_dev no lru 1
done
