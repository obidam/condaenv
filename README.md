# Conda environment for OBIDAM applications

## Install the OBIDAM environment from conda recipe

Clone the repo:

	git clone https://github.com/obidam/condaenv.git
	# or alternatively:
	git clone git@github.com:obidam/condaenv.git

Then create the conda environment from the last yml recipe for your platform:

	conda env create -f condaenv/obidam_x86_64_Linux_last.yml

## Build the OBIDAM environment from the list of packages

You can run one of the build scripts:
		
	build_obidam_x86_64_py36.sh

## Remove the environment

	conda remove --name obidam --all	
