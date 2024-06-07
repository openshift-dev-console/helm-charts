#!/bin/bash

set -e

chartpath=$1
buildpath=new

helm lint "$chartpath"
helm package "$chartpath" --destination "$buildpath"
helm repo index "$buildpath" --merge docs/index.yaml
mv $buildpath/* docs
rmdir "$buildpath"
