.PHONY: install download_dataset prepare_coco  

install: 
	pip install -r requirements.txt
	# sampling-free dependency 
	pip install ninja yacs cython matplotlib tqdm opencv-python pillow pycocotools

download_dataset:
	rm -rf data/*
	gdown https://drive.google.com/uc?id=1ZcyAMUDBs67KU9hc4sW2DaHOVxHEPFFp -O "data/dataset.zip"
	unzip -q "data/dataset.zip"  -d "data" 

prepare_coco: 
	rm -rf data/imgs
	rm -f data/train.json
	python dcm_to_png.py
	python coco_trans.py