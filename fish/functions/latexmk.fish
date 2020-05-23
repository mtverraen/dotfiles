#!/usr/bin/env fish

function latexmk -d "run latexmk -pdf" 
	set mnt /usr/src/app 
	set cmd latexmkc
	docker run -v $PWD:/tmp latex /bin/bash -c "latexmk -pdf $argv; latexmk -c"
end
