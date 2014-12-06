#!/bin/sh

rails new /home/app
cd /home/app && bundle install --path=vendor/bundle
rails s