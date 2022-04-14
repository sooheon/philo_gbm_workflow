```
cd database
philosopher workspace --init
philosopher database --id UP000005640 --reviewed --contam
```

edit yml to add protein database

```
docker run -it --rm -v $(pwd):/data -v $MZML_DIR_IN_HOST:/mzml chambm/pwiz-skyline-i-agree-to-the-vendor-licenses bash
```

Inside docker

```
philosopher pipeline --config params/philosopher.yml /mzml/*CPTAC*
```