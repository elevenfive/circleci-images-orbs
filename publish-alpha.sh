#!/bin/bash

circleci config pack src > orb.yml
circleci orb publish orb.yml circleci/circleci-images@dev:alpha
rm -rf orb.yml
