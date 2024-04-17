#!/bin/bash

mkdir -p ./data/aggregated

pushd ./data/pages/reviews

for game in *; do
	jq -s '.[0].reviews=([.[].reviews]|flatten)|.[0]' ${game}/*.json > ../../aggregated/${game}.json
done

popd
