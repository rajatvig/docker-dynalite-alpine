[![Build Status](https://travis-ci.org/rajatvig/docker-dynalite-alpine.svg?branch=master)](https://travis-ci.org/rajatvig/docker-dynalite-alpine)
[![](https://images.microbadger.com/badges/image/rajatvig/dynalite-alpine.svg)](http://microbadger.com/images/rajatvig/dynalite-alpine "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/rajatvig/dynalite-alpine.svg)](http://microbadger.com/images/rajatvig/dynalite-alpine "Get your own version badge on microbadger.com")

# Overview

This image contains a copy of Dynalite on Alpine.
Dynalite is an AWS DynamoDB emulator written by Michael Hart.

Dynalite can be found here: https://github.com/mhart/dynalite.

# How-to/usage

In order to use this, simply run:

docker run -d -t -p 8000:8000 rajatvig/dynalite-alpine:latest
