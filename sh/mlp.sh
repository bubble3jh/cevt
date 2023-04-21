
## Coarse Search
## Constant
for lr_init in 1e-2 1e-3 1e-4
do
for wd in 1e-3 1e-4 1e-5
do
CUDA_VISIBLE_DEVICES=1 "/mlainas/teang1995/anaconda3/envs/cluster/bin/python3" main.py --model=mlp --optim=adam --lr_init=${lr_init} --wd=${wd} --epochs=200 --scheduler=constant
done
done

## Cos Anneal
for lr_init in 1e-2 1e-3 1e-4
do
for wd in 1e-3 1e-4 1e-5
do
CUDA_VISIBLE_DEVICES=1 "/mlainas/teang1995/anaconda3/envs/cluster/bin/python3 main.py" --model=mlp --optim=adam --lr_init=${lr_init} --wd=${wd} --epochs=200 --scheduler=cos_anneal --t_max=200
done
done