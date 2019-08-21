#!/usr/bin/env bash

source .envrc

#fly --target chynfield login
fly --target chynfield set-pipeline \
  --pipeline apply-explicit-changes \
  --config ./pipeline.yml \
  --var github_private_key="$GITHUB_PRIVATE_KEY"
fly --target chynfield unpause-pipeline --pipeline apply-explicit-changes
