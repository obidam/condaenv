#!/bin/bash
#
# This script will build the Obidam environment from scratch for linux
# 
# Use "conda info <package>" to see the dependencies for each package.

# Download the conda installer:
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Install and update conda with python 3.4:
bash Miniconda3-latest-Linux-x86_64.sh
conda update conda

# Add more channels:
conda config --add channels conda-forge
conda config --add channels anaconda-fusion
conda config --add channels defaults

# Init the OBIDAM environment from anaconda:
conda create -n obidam36 python=3.6 anaconda
source activate obidam36

# Install packages:
conda install -n obidam36 -c conda-forge xarray dask netCDF4 bottleneck gsw
conda install -n obidam36 -c conda-forge cartopy pynio pseudonetcdf
conda install -n obidam36 dask-ml 
conda install -n obidam36 -c conda-forge intake intake-xarray rasterio intake-cmip intake-spark

conda install -n obidam36 -c conda-forge seaborn hvplot

# Add environment to Jupyter list of kernels:
python -m ipykernel install --user --name obidam36 --display-name "obidam36"
