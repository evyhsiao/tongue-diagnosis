# Automatic Tongue diagnosis System

> This project is to apply artificial intelligence to traditional Chinese medical tongue diagnosis.  
> We use YOLOv5 to train our data model and deploy it as a IOS app.

## Dataset

### Labels
 - normal
 - fissured
 - crenated
### Images

 | class | original | augmentation | total | valid | test | train | 
 | :---: | :---: | :---: | :---: | :---: | :---: | :---: | 
 | fissured | 83 | 178 | 261 | 26 | 26 | 209 | 
 | crenated | 44 | 179 | 223 | 26 | 26 | 171 | 
 | normal | 290 | 0 | 290 | 26 | 26 | 238 | 
 | toatal | 417 | 357 | 774 | 78 | 78 | 618 | 
 

## Model

### Accuracy

 | Class | Images | Targets | P | R | mAP@. 5 | mAP@.5:.95: | 
 | :---: | :---: | :---: | :---: | :---: | :---: | :---: | 
 | a11 | 42 | 42 | 0.991 | 1 | 0.996 | 0. 935 | 
 | crenated tongue | 42 | 9 | 0.981 | 1 | 0.996 | 0.937 | 
 | fissured tongue | 42 | 2 | 1 | 1 | 0.995 | 0. 945 | 
 | normal tongue | 42 | 31 | 0.992 | 1 | 0.997 | 0. 923 | 
