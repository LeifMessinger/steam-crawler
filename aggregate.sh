#!/bin/bash

jq -s '.[0].reviews=([.[].reviews]|flatten)|.[0]' ./data/pages/reviews/*/*.json > aggregated.json
