cd ..
git clone https://github.com/brepdiff/brepdiff.git

cd brepdiff

conda install -c conda-forge cmake gcc=12 gxx=12

pip install torch==2.4.0 torchvision==0.19.0 torchaudio==2.4.0 \
  --index-url https://download.pytorch.org/whl/cu124

pip install torch-cluster torch-scatter \
  -f https://data.pyg.org/whl/torch-2.4.0+cu124.html

pip install dgl \
  -f https://data.dgl.ai/wheels/torch-2.4/cu124/repo.html

pip install -r requirements.txt
