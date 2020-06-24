#! /usr/bin/env fish

function opa -d "run openpolicyagent opa  util"
    set mnt /usr/src/app
    set cmd opa
    docker run --rm openpolicyagent/opa:latest
end
