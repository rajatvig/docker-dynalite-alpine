# Overview

This image contains a copy of Dynalite on Alpine.
Dynalite is an AWS DynamoDB emulator written by Michael Hart.

Dynalite can be found here: https://github.com/mhart/dynalite.

# How-to/usage

In order to use this, simply run:

docker run -d -t -p 8000:8000 rajatvig/dynalite-alpine:latest
