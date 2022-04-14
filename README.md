```
cd database
philosopher workspace --init
philosopher database --id UP000005640 --reviewed --contam
```

edit yml to add protein database

```
docker run -it --rm -v $(pwd):/data chambm/pwiz-skyline-i-agree-to-the-vendor-licenses bash
```

```
philosopher pipeline --config params/philosopher.yml /mzmla/*CPTAC*
```