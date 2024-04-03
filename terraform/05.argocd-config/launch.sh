#!/bin/bash

set -e

kustomize build ./applications | kubectl apply -f -