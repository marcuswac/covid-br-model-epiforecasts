#!/bin/bash

Rscript utils/update_posts.R

cp -r _posts/national/ne-cities/ne-cities.html posts/ne-cities/index.html
cp -r _posts/national/brazil/brazil.html posts/states/index.html
cp -r _posts/national/cities-al/cities-al.html posts/cities-al/index.html
cp -r _posts/national/cities-ba/cities-ba.html posts/cities-ba/index.html
cp -r _posts/national/cities-ce/cities-ce.html posts/cities-ce/index.html
cp -r _posts/national/cities-ma/cities-ma.html posts/cities-ma/index.html
cp -r _posts/national/cities-pb/cities-pb.html posts/cities-pb/index.html
cp -r _posts/national/cities-pe/cities-pe.html posts/cities-pe/index.html
cp -r _posts/national/cities-pi/cities-pi.html posts/cities-pi/index.html
cp -r _posts/national/cities-rn/cities-rn.html posts/cities-rn/index.html
cp -r _posts/national/cities-se/cities-se.html posts/cities-se/index.html
cp -r _posts/national/deaths-brazil/deaths-brazil.html posts/deaths-states/index.html
cp -r _posts/national/deaths-ne-cities/deaths-ne-cities.html posts/deaths-ne-cities/index.html
cp -r _posts/national/cidades-rna/cidades-rna.html posts/cidades-rna/index.html

bin/update_github.sh
