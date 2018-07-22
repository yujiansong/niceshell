#!/bin/bash
# debug.sh
for i in {1..6}
do
    # set -x 在执行是显示参数和命令
    set -x
    echo $i
    # sex +x 禁止调试 
    set +x
    # 仅在 -x 和 +x多限制的区域内，echo $i 的调试信息才会被打出来
done
echo "Script executed"
