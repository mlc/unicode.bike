#!/bin/sh

set -ex

aws s3 cp bike.html s3://unicode.bike/bike.html --content-type 'text/html;charset=utf-8' --cache-control 'public,max-age=86400'
aws cloudfront create-invalidation --distribution-id EWVYX1R4EFTCG --paths / /bike.html /index.html
