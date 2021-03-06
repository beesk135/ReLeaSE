# Create new conda environment with Python 3.6
conda create -n release python=3.6
# Activate the environment
source activate release
# Install conda dependencies
conda install --yes --file conda_requirements.txt
conda install -c rdkit rdkit nox cairo
# rdkit nox could not be installed on windows
conda install pytorch=0.4.1 torchvision=0.2.1 -c pytorch
# Instal pip dependencies
pip install -r pip_requirements.txt
# Add new kernel to the list of jupyter notebook kernels
python -m ipykernel install --user --name release --display-name ReLeaSE

# data.py Policy gradient...:  27%|██▋       | 4/15 [00:34<01:35,  8.71s/it]/content/ReLeaSE/release/data.py:98: UserWarning: To copy construct from a tensor, it is recommended to use sourceTensor.clone().detach() or sourceTensor.clone().detach().requires_grad_(True), rather than torch.tensor(sourceTensor).
