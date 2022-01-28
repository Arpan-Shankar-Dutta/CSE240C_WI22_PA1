pref_type=(
    "hashed_perceptron-no-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_hist_-1-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_hist_-2-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_hist_+1-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_hist_+2-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_dist_-1-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_dist_-2-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_dist_+1-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_dist_+2-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_BBsize_5-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_BBsize_6-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_BBsize_8-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_BBsize_9-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_Conf_Th_2-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_Conf_Th_3-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_BBsize_4-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_BBsize_3-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_BBsize_2-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_BBsize_1-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_way14-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_way71-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_set7-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-EIP_set9-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_way2-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_way8-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_set2-next_line-spp_dev-no-lru-1core"
    "hashed_perceptron-D_JOLT_set05-next_line-spp_dev-no-lru-1core")

for i in ${!pref_type[@]}; do
    for FILE in dpc3_traces/*; do    
        ./run_champsim.sh ${pref_type[$i]} 50 50 $FILE &
    done
    wait
done
