# Docker and Micro-Services
## Chris Dail @ Maritime Devcon 2015

----------------

This repo contains the slides for the talk I gave at Maritime Devcon 2015 (http://maritimedevcon.ca). The example I showed at the conference is located in the `demo` directory. Contents of Demo:

 * init.sh - Preparation for the dmeo. Download a bunch of docker images locally
 * script.sh - The 'script' for the demo.
 * main.go - Super simple REST API written in go-lang
 * Dockerfile - Dockerfile to create image for example application. Uses go-lang on-build container
 * nginx.conf - Load balancer configuration for nginx

Note hard coded IP addresses in script.sh/nginx.conf. This was due to the fact that I was running this with boot2docker. Change these for your own environment.
