git clone https://github.com/Saeed11b95/VGT.git
curl 'https://api.onedrive.com/v1.0/shares/s!AvZU31Rt-a34hPl7pwzffZUDiSQuvA/root/content' -L -o dataset.tar.bz2
tar -xvf dataset.tar.bz2
apt update
apt install aria2
aria2c -x16 https://walnut-cdn.s3.ap-southeast-1.amazonaws.com/vegaspread-pdf/models_and_data.zip
apt install unzip
unzip models_and_data.zip
pip install transformers opencv-python scipy shapely timm numpy==1.23
python -m pip install 'git+https://github.com/facebookresearch/detectron2.git'
python /workspace/VGT/object_detection/train_VGT.py --config-file /workspace/VGT/object_detection/Configs/cascade/fintabnet.yaml --num-gpus 1 MODEL.WEIGHTS /workspace/models/doclaynet_model.pth OUTPUT_DIR /workspace/Out
~                                                                                                                                                                                                                             
~                                                                                                                                                                                                                             
~                                                                                                                                                                                                                             
~                                                                                                                                                                                                                             
~                                                                                                                                                                                                                             
~                                                                                                                                                                                                                             
~                                                               
