wget https://repo.anaconda.com/miniconda/Miniconda3-py310_23.1.0-1-Linux-x86_64.sh
bash Miniconda3-py310_23.1.0-1-Linux-x86_64.sh -b -f -p /usr/local
git clone https://github.com/facebookresearch/multihop_dense_retrieval.git


cd multihop_dense_retrieval/
# !ln -s /content/drive/MyDrive/Project/multihop_dense_retrieval/data /content/multihop_dense_retrieval/data
# !ln -s /content/drive/MyDrive/Project/multihop_dense_retrieval/models /content/multihop_dense_retrieval/models

conda create --prefix /content/MDR -y python=3.8 -y
source activate /content/MDR
pip install -r requirements.txt

conda install faiss-gpu cudatoolkit=10.2 -c pytorch -y
conda install pytorch torchvision torchaudio pytorch-cuda=11.7 -c pytorch -c nvidia -y

git clone https://github.com/NVIDIA/apex
pip install -v --disable-pip-version-check --no-cache-dir ./
python setup.py develop

conda install chardet -y