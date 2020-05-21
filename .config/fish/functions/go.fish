#!/usr/bin/env fish

function go -d "Compile go project"
	set mnt /usr/src/app
	set cmd go
	docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.13 go 
end
