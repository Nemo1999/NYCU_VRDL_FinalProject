.PHONY: install download_dataset prepare_dataset  

install: 
	pip install -r requirements.txt

download_dataset:
	rm -rf data/*
	gdown https://drive.google.com/uc?id=1ZcyAMUDBs67KU9hc4sW2DaHOVxHEPFFp -O "data/dataset.zip"
	unzip -q "data/dataset.zip"  -d "data" 
