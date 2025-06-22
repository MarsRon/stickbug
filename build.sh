#!/bin/bash

sudo rm -r work/* out/*
sudo mkarchiso -v -w work -o out .
