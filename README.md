# Conda environment for OBIDAM applications

## Installing the OBIDAM conda environment

Clone the repo:

	git clone https://github.com/obidam/condaenv.git
	# or alternatively:
	git clone git@github.com:obidam/condaenv.git

Then create the conda environment:

	cd condaenv
	conda env create -f obidam_x86_64_Linux_last.yml

## Remove the environment
conda remove --name obidam --all

## Updating the environment from dev server
	cd utils
	./update_to_git