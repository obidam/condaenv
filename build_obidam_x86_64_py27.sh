#!/bin/bash
#
# This script will build the Obidam environment from scratch for linux
# 
source ~/.bash_profile

# Download the conda installer:
#wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh

# Install and update conda with python 2.7:
#bash Miniconda2-latest-Linux-x86_64.sh
conda update conda

# Add more channels:
conda config --add channels conda-forge
conda config --add channels anaconda-fusion
# conda config --add channels menpo
# conda config --add channels ioam
# conda config --add channels fbriol
conda config --add channels defaults

# Init the OBIDAM environment from anaconda:
conda create -n obidam27 python=2.7 anaconda
source activate obidam27

# Conda packages:
conda install -n obidam27 netCDF4 # netcdf4-python: python/numpy interface to the netCDF C library
conda install -n obidam27 xarray # N-D labeled arrays and datasets in Python 
conda install -n obidam27 gsw # Python implementation of TEOS-10 GSW based on ufunc wrappers of GSW-C

conda install -n obidam27 pandas # Python Data Analysis Library
conda install -n obidam27 pandas-highcharts # Easily build Highcharts plots with pandas.DataFrame objects
conda install -n obidam27 pandas-profiling # Create HTML profiling reports from pandas DataFrame objects

conda install -n obidam27 pytables # A Python package to manage extremely large amounts of data
conda install -n obidam27 bottleneck # Fast NumPy array functions written in C
conda install -n obidam27 cython # A Python to C compiler

conda install -n obidam27 qgrid # An Interactive Grid for Sorting and Filtering DataFrames in IPython Notebook
conda install -n obidam27 ipyparallel # Python package and collection of CLI scripts for controlling clusters for Jupyter
conda install -n obidam27 nb_conda # Conda environment and package access extension from within Jupyter
conda install -n obidam27 jupyter_console # Jupyter terminal console
conda install -n obidam27 vega # Vega is a visualization grammar, useful in jupyter notebooks

conda install -n obidam27 geojson # Functions for encoding and decoding GeoJSON formatted data
conda install -n obidam27 ffmpeg # Static builds for ffmpeg on conda
conda install -n obidam27 jinja2 # Template engine for Python

conda install -n obidam27 seaborn # Statistical data visualization using matplotlib
conda install -n obidam27 folium # Python Data, Leaflet.js Maps
conda install -n obidam27 cartopy # Make drawing maps for data analysis and visualisation as easy as possible
conda install -n obidam27 python-highcharts # Layer between Python and Javascript for Highcharts projects (highcharts, highmaps, and highstocks).
conda install -n obidam27 python-graphviz # Simple Python interface for Graphviz
conda install -n obidam27 -c bokeh datashader

conda install -n obidam27 dask-ml # Distributed and parallel machine learning
conda install -n obidam27 dask-searchcv # Tools for performing hyperparameter search with Scikit-Learn and Dask
conda install -n obidam27 tensorflow # Library for numerical computation using data flow graphs
conda install -n obidam27 keras # Deep Learning library for Python
conda install -n obidam27 dask-jobqueue # Easily deploy Dask on job queuing systems like PBS, Slurm, MOAB, SGE, and LSF.

conda install -n obidam27 pyarrow # Apache Arrow is a cross-language development platform for in-memory data
conda install -n obidam27 fastparquet # Python implementation of the parquet format, aiming integrate into python-based big data work-flows
conda install -n obidam27 hdfs3 # Python wrapper for libhdfs3
conda install -n obidam27 google-cloud-storage # Python idiomatic client for Google Cloud Storage
conda install -n obidam27 happybase # Python library to interact with Apache HBase
conda install -n obidam27 gcsfs # Pythonic file-system interface for Google Cloud Storage

#conda install -n obidam27 cis # Easy collocation, visualization, analysis, and comparison of diverse gridded and ungridded datasets used in the atmospheric sciences (not used anymore because it downgrade the netcdf4 library from 1.4.0 to 1.3.1
#conda install -n obidam27 ecmwf_grib # The ECMWF API for encoding and decoding WMO FM-92 GRIB edition 1 and edition 2 messages.

# More packages from pip
pip install --upgrade pip
pip install sklearn-xarray # Integrate xarray's data model into the scikit-learn machine learning framework
pip install bigml # Simple Python bindings for BigML.io
pip install xgcm # Python package for analyzing general circulation model output data
pip install xmitgcm # Python package for reading MITgcm binary MDS files into xarray data structures
pip install ecco_v4_py # Python package that includes tools for loading and manipulating the ECCO v4 ocean and sea-ice state estimate
pip install pyresample # Python package for resampling (reprojection) of earth data.
pip install motu-client # Python script used to connect to Motu HTTP server
pip install seawater # CSIRO seawater toolbox for calculating the properties of sea water.
#pip install xray
pip install regionmask # Create masks of geographical regions



# Enable Jupyter extensions:
jupyter nbextension enable vega --py --sys-prefix # Enable the folium extension in Jupyter
jupyter nbextension enable nb_conda --py --sys-prefix # Enable the nb_conda extension in Jupyter
jupyter nbextension install --py mayavi --user
#jupyter nbextension enable mayavi --user --py
# Add OBIDAM kernel to jupyter:
python -m ipykernel install --user --name obidam27 --display-name "obidam27"
