#!/bin/sh
docker run --rm -it -w /build -v "$PWD":/build daux/daux.io daux
sudo chown -R www-data: ./*
sudo chmod -R 775 ./*