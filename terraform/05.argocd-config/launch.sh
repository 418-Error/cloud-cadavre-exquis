#!/bin/bash

set -e

kustomize build ./applications/prod | kubectl apply -f -