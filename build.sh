#!/bin/bash
set -e

sudo rm -r work/* out/*
sudo mkarchiso -v -w work -o out .
