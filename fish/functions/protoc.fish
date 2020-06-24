#!/usr/bin/env fish

function protoc "protoc compiler -arg lang"
	set mnt /usr/src/app
	set cmd protoc
	docker run -v `pwd`:/defs namely/protoc-all -f myproto.proto -l
end
