#!/bin/bash
#
# This script will build the OBIDAM environment from scratch for linux, based on python 3.6
# 
# Use "conda info <package>" to see the dependencies for each package.

# Download and install conda:
# wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
# bash Miniconda3-latest-Linux-x86_64.sh

# For Mac you can use:
# wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
# bash Miniconda3-latest-MacOSX-x86_64.sh

# Update conda with python 3.4:
conda update conda

# Add more channels:
conda config --add channels conda-forge
conda config --add channels anaconda-fusion
conda config --add channels defaults

# Init the OBIDAM environment from anaconda:
conda create -n obidam36 python=3.6 anaconda
source activate obidam36

# Install packages:
conda install -n obidam36 xarray dask netCDF4 bottleneck gsw\
 cartopy pynio pseudonetcdf intake intake-xarray rasterio intake-cmip intake-spark

conda install -n obidam36 seaborn hvplot python-graphviz\
 google-cloud-storage gcsfs parcels ffmpeg nodejs ipywidgets datashader pyviz hvplot geoviews

# conda install -n obidam36 -c conda-forge xarray dask netCDF4 bottleneck gsw
# conda install -n obidam36 -c conda-forge cartopy pynio pseudonetcdf
# conda install -n obidam36 dask-ml 
# conda install -n obidam36 -c conda-forge intake intake-xarray rasterio intake-cmip intake-spark

# conda install -n obidam36 -c conda-forge seaborn hvplot
# conda install -n obidam36 google-cloud-storage gcsfs
# conda install -n obidam36 -c conda-forge python-graphviz
# 
# conda install -n obidam36 parcels ffmpeg

pip install sklearn-xarray dask-kubernetes dask_labextension
# conda install -n obidam36 nodejs
# conda install -n obidam36 -c conda-forge ipywidgets
jupyter labextension install dask-labextension
jupyter labextension install @pyviz/jupyterlab_pyviz
jupyter labextension install toc github
jupyter labextension install @jupyter-widgets/jupyterlab-manager

# Add environment to Jupyter list of kernels:
python -m ipykernel install --user --name obidam36 --display-name "obidam36"