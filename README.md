download files and enter container with:

```
python3 ../PDC-Public/tools/downloadPDCData/Python/downloadPDCData.py PDC_file_manifest_04132022_173726.csv
find -name '*.raw' -exec mv -t raws/ {} +
docker run -it --rm -v $(pwd):/data chambm/pwiz-skyline-i-agree-to-the-vendor-licenses bash
```

in docker:

```
sh msconvert.sh
```

MSConvert is faster than ThermoRawFileParser even when emulated through wine, but latter has better logging. Both require mono. Choose MSConvert for speed.

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
