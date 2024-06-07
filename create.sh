#!/bin/bash

set -e

chartname=$1

helm create "$chartname"
