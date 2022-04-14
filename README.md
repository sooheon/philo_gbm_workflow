```
cd database
philosopher workspace --init
philosopher database --id UP000005640 --reviewed --contam
```

edit yml to add protein database

```
philosopher pipeline --config params/philosopher.yml /mzmla/*CPTAC*
```