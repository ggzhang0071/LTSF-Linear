img="nvcr.io/nvidia/pytorch:21.07-py3" 

docker run --gpus all  --privileged=true   --workdir /git --name "ltst_linear"  -e DISPLAY --ipc=host -d --rm  -p 6643:8889\
 -v /home/ggzhang/LTSF-Linear:/git/ltst_linear \
 -v /home/ggzhang/datasets:/git/datasets \
 $img sleep infinity

docker exec -it ltst_linear /bin/bash

#docker images  |grep "ltst_linear"  |grep "21."

#docker stop  ltst_linear