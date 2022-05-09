# Ustormer-An-Image-Restoration-Method-based-on-Window-based-Channel-wise-Local-Transformer
The AI Algorithm Proposed by The Master's Degree Thesis of Shengyuan Yan of Wuhan University School of Computer Science

Illustrations for the use of this repository:

1, data preparation

First download SIDD dataset for training on SIDD's official site. You will get a ZIP pack. Unzip all the files and preprocess the SIDD_Medium_sRGB with generate_patches.py to generate patches as the training images for Ustormer_Denoise, the recommended command is in below:

cat SIDD_Medium_Srgb_Parts.z* > combined.zip

unzip combined.zip

unzip val.zip

python3 generate_patches_SIDD.py --src_dir ../sidd/SIDD_Medium_Srgb/Data --tar_dir ../sidd/train


For the training of Ustormer_Derain, download Rain14000 dataset from official site. For the training of Ustormer_Deblur, download GoPro dataset from official site.

2, training

For Ustormer_Denoise:

python3 ./train.py --arch Uformer --gpu '0,2,4'     --train_ps 128 --train_dir ../sidd/train --env 32_0705_1     --val_dir ../sidd/val --embed_dim 32 --warmup --batch_size 32 --lr_initial 0.0002

And similar commands for Ustormer_Derain as well as Ustormer_Deblur. You only need to change the path in --train_dir and --val_dir

3, test and pretrained models

 My originally pretrained weights will not be supplied here. When you have finished your own training, use your .pth files and the test.py scripts in 3 branches of this repo respectively. Here we take Ustormer_Derain for example:
 
python ./test.py --arch Uformer --batch_size 1 --gpu '4' --input_dir ../5Deraining/Test1200 --result_dir ./results --weights ./log/Uformer32_0705_1/models/model_epoch_250.pth --embed_dim 32

4, citation

This repository is the original implementation of the  AI Algorithm Proposed by The Master's Degree Thesis of Shengyuan Yan of Wuhan University School of Computer Science: Ustormer-An-Image-Restoration-Method-based-on-Window-based-Channel-wise-Local-Transformer. The pytorch implementation of Ustormer refered to the original pytorch implementation of uformer and Restormer:

Zhendong Wang, Xiaodong Cun, Jianmin Bao, and Jianzhuang Liu. Uformer: A general U-shaped transformer for image restoration. CoRR, abs/2106.03106, 2021.

https://github.com/ZhendongWang6/Uformer

Syed Zamir, Aditya Arora, Salman Khan, Munawar Hayat, Fahad Khan, and Ming-Hsuan Yang. Restormer: Efficient transformer for high-resolution image restoration. CoRR, abs/2111.09881, 2021.

https://github.com/swz30/Restormer

5, copyright

As far as Chinese Master's Degree's academic regulations and the confidential level of my graduation research is concerned, this repo, the pytorch implementation of Ustormer can be public and open-source.

If you want to use this repo for any academic or commercial purpose or if you have any questions to ask me please contact me in shengyuan_yan@163.com and for academic references please cite Ustormer as followings:

Shengyuan Yan, Research on an Image Restoration Method based on Window-based Channel-wise Local Self-attention Mechanism[M]. Wuhan University, China, 2022.

Thanks for your attention and starring
