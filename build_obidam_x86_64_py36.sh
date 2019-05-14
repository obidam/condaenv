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
conda config --add channels pyviz

# Init the OBIDAM environment from anaconda:
conda create -n obidam36 python=3.6 anaconda
source activate obidam36

# Install packages:
conda install -n obidam36 xarray dask netCDF4 bottleneck gsw cartopy pynio pseudonetcdf intake intake-xarray rasterio intake-cmip intake-spark

conda install -n obidam36 seaborn hvplot python-graphviz google-cloud-storage gcsfs parcels ffmpeg nodejs ipywidgets datashader pyviz hvplot geoviews

conda install -n obidam36 matplotlib-venn
conda install -n obidam36 nbsphinx

conda install -n obidam36 mpi mpich openmpi mpi4py
conda install -c anaconda gfortran_osx-64

conda install -n obidam36 tensorflow keras
pip install jupyter-tensorboard


pip install --upgrade google-cloud-bigquery
pip install papermill
pip install -U pytest
pip install motuclient  
pip install sphinx_rtd_theme

conda install -n obidam36 nodejs
pip install sklearn-xarray dask-kubernetes dask_labextension
# conda install -n obidam36 -c conda-forge ipywidgets
jupyter labextension install dask-labextension
jupyter labextension install @pyviz/jupyterlab_pyviz
# jupyter labextension install toc github
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter labextension install jupyterlab_tensorboard

# Add environment to Jupyter list of kernels:
python -m ipykernel install --user --name obidam36 --display-name "obidam36"