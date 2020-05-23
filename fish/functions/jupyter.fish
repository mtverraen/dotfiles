#!/usr/bin/env fish

function jupyter -d "run jupyter notebook"
	set mnt /usr/src/app
	set cmd jupyter
	docker run --rm -p 8888:8888 -p 4040:4040 -e JUPYTER_ENABLE_LAB=yes -v $HOME:/home/jovyan jupyter/all-spark-notebook
end
