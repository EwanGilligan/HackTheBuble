python faceswap-master/faceswap.py extract -i $1 -o src/set1
python faceswap-master/faceswap.py extract -i $2 -o src/set2
python faceswap-master/faceswap.py train -A src/set1 -B src/set2 -m src/model -it $3
python faceswap-master/faceswap.py convert -i $1 -o src/out -m src/model
python faceswap-master/tools.py effmpeg -a gen-vid -i src/out -o $4 -fps 24