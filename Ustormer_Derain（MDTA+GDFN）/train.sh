# Uformer16
# python3 ./train.py --arch Uformer --batch_size 32 --gpu '0,1' \
#     --train_ps 128 --train_dir /cache/SIDD/train --env 16_0701_1 \
#     --val_dir /cache/SIDD/val --embed_dim 16 --warmup

# Uformer32
# nohup python3 ./train.py --arch Uformer --batch_size 16 --gpu '0,1' \
#     --train_ps 128 --train_dir ../sidd/train --env 32_0730_1   \
#     --val_dir ../sidd/val --embed_dim 32 --warmup --lr_initial=0.0001 >> uformer32_0730_1.log 2>1 &

    
# UNet
nohup python3 ./train.py --arch UNet --batch_size 48 --gpu '0,1' \
    --train_ps 128  --train_dir ../sidd/train --env 32_0730_1   \
     --val_dir ../sidd/val --embed_dim 32 --warmup --lr_initial=0.0003 >> unet32_0730_1.log 2>1 &

