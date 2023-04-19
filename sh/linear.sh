## Best


### Coarse Search
# Constant
for lr_init in 1e-2 1e-3 1e-4 1e-5
do
    for wd in 1e-3 1e-4 1e-5
    do
        for scaling in 'minmax' 'normalization'
        do
        CUDA_VISIBLE_DEVICES=6 python3 main.py --model=linear --optim=adam --lr_init=${lr_init} --wd=${wd} --epochs=100 --scheduler=constant --scaling=${scaling}
        done
    done
done

# Cos Anneal
for lr_init in 1e-2 1e-3 1e-4 1e-5
do
    for wd in 1e-3 1e-4 1e-5
    do
        for scaling in 'minmax' 'normalization'
        do
        CUDA_VISIBLE_DEVICES=6 python3 main.py --model=linear --optim=adam --lr_init=${lr_init} --wd=${wd} --epochs=100 --scheduler=cos_anneal --t_max=10 --scaling=${scaling}
        done
    done
done