cd ..
git clone https://github.com/brepdiff/brepdiff.git

cd brepdiff

# conda install -c conda-forge cmake gcc=12 gxx=12 -y

# headless server only
conda install -c conda-forge \
  xorg-libx11 \
  xorg-libxrandr \
  xorg-libxinerama \
  xorg-libxcursor \
  xorg-libxi \
  xorg-libxext \
  xorg-libxrender \
  xorg-xf86vidmodeproto \
  xorg-randrproto \
  xorg-renderproto \
  xorg-inputproto \
  xorg-xextproto \
  xorg-kbproto \
  mesalib \
  -y

pip install torch==2.4.0 torchvision==0.19.0 torchaudio==2.4.0 \
  --index-url https://download.pytorch.org/whl/cu124

pip install torch-cluster torch-scatter \
  -f https://data.pyg.org/whl/torch-2.4.0+cu124.html

pip install dgl \
  -f https://data.dgl.ai/wheels/torch-2.4/cu124/repo.html

pip install -r requirements.txt
pip install -e .
