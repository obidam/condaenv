#!/bin/bash
#
# This script will build the Obidam environment from scratch for linux
# 
# UnsatisfiableError: The following specifications were found to be in conflict:
#   - dask-ml -> dask-searchcv -> python 3.5*
#   - python 3.4*
# Use "conda info <package>" to see the dependencies for each package.

# Download the conda installer:
# wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Install and update conda with python 3.4:
# bash Miniconda3-latest-Linux-x86_64.sh
conda update conda

# Add more channels:
conda config --add channels conda-forge
conda config --add channels anaconda-fusion
conda config --add channels defaults
# conda config --add channels menpo
# conda config --add channels ioam
# conda config --add channels fbriol

# Init the OBIDAM environment from anaconda:
conda create -n obidam34 python=3.4 anaconda
source activate obidam34

# Conda packages:
conda install -n obidam34 netCDF4 # netcdf4-python: python/numpy interface to the netCDF C library
conda install -n obidam34 xarray # N-D labeled arrays and datasets in Python 
conda install -n obidam34 gsw # Python implementation of TEOS-10 GSW based on ufunc wrappers of GSW-C

conda install -n obidam34 pandas # Python Data Analysis Library
conda install -n obidam34 pandas-highcharts # Easily build Highcharts plots with pandas.DataFrame objects
conda install -n obidam34 pandas-profiling # Create HTML profiling reports from pandas DataFrame objects

conda install -n obidam34 pytables # A Python package to manage extremely large amounts of data
conda install -n obidam34 bottleneck # Fast NumPy array functions written in C
conda install -n obidam34 cython # A Python to C compiler

conda install -n obidam34 qgrid # An Interactive Grid for Sorting and Filtering DataFrames in IPython Notebook
conda install -n obidam34 ipyparallel # Python package and collection of CLI scripts for controlling clusters for Jupyter
conda install -n obidam34 nb_conda # Conda environment and package access extension from within Jupyter
conda install -n obidam34 jupyter_console # Jupyter terminal console

conda install -n obidam34 geojson # Functions for encoding and decoding GeoJSON formatted data
conda install -n obidam34 ffmpeg # Static builds for ffmpeg on conda
conda install -n obidam34 jinja2 # Template engine for Python

conda install -n obidam34 seaborn # Statistical data visualization using matplotlib
conda install -n obidam34 folium # Python Data, Leaflet.js Maps
conda install -n obidam34 cartopy # Make drawing maps for data analysis and visualisation as easy as possible
conda install -n obidam34 python-highcharts # Layer between Python and Javascript for Highcharts projects (highcharts, highmaps, and highstocks).
conda install -n obidam34 python-graphviz # Simple Python interface for Graphviz
conda install -n obidam34 -c bokeh datashader # Datashader is a data rasterization pipeline for automating the process of creating meaningful representations of large amounts of data

conda install -n obidam34 dask-ml # Distributed and parallel machine learning
conda install -n obidam34 dask-searchcv # Tools for performing hyperparameter search with Scikit-Learn and Dask
conda install -n obidam34 tensorflow # Library for numerical computation using data flow graphs
conda install -n obidam34 keras # Deep Learning library for Python

conda install -n obidam34 cis # Easy collocation, visualization, analysis, and comparison of diverse gridded and ungridded datasets used in the atmospheric sciences
conda install -n obidam34 google-cloud-storage # Python idiomatic client for Google Cloud Storage
conda install -n obidam34 ecmwf_grib # The ECMWF API for encoding and decoding WMO FM-92 GRIB edition 1 and edition 2 messages.

# More packages from pip
pip install sklearn-xarray # Integrate xarray's data model into the scikit-learn machine learning framework
pip install bigml # Simple Python bindings for BigML.io
pip install xgcm # Python package for analyzing general circulation model output data

# Enable Jupyter extensions:
jupyter nbextension enable vega --py --sys-prefix # Enable the folium extension in Jupyter
jupyter nbextension enable nb_conda --py --sys-prefix # Enable the nb_conda extension in Jupyter
# Add OBIDAM kernel to jupyter:
python -m ipykernel install --user --name obidam34 --display-name "obidam34"
