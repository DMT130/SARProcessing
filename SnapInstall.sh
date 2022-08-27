!bin/bash

apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq python3 python3-pip git libgdal-dev locales libspatialindex-dev wget unzip imagemagick libgfortran5 nodejs npm

alias python=python3

rm -rf /var/lib/apt/lists/*

python3 -m pip install GDAL==3.0.4

python3 -m pip install jupyterlab

mkdir /home/ost/programs

wget http://step.esa.int/downloads/8.0/installers/esa-snap_sentinel_unix_8_0.sh

https://github.com/ESA-PhiLab/OpenSarToolkit/blob/main/snap.varfile

chmod +x esa-snap_sentinel_unix_8_0.sh


./esa-snap_sentinel_unix_8_0.sh -q -varfile snap.varfile
cd /home/ost/programs

wget https://www.orfeo-toolbox.org/packages/OTB-8.0.1-Linux64.run

chmod +x OTB-8.0.1-Linux64.run

./OTB-8.0.1-Linux64.run

export CPLUS_INCLUDE_PATH=/usr/include/gdal
export C_INCLUDE_PATH=/usr/include/gdal

python3 -m pip install opensartoolkit