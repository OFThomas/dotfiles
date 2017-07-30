#!/usr/bin/env bash
#Oliver Thomas 2017

f2py -c -m fmod fortranmodule.f90 && python ant.py

