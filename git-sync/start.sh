#!/bin/bash
set -e

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

pushd /repo > /dev/null
while true; do
	inotifywait .
	git pull && git push origin master
done
popd > /dev/null
