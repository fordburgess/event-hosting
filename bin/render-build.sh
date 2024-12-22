#!/usr/bin/env bash
# exit on error
export NODE_OPTIONS=--openssl-legacy-provider


set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
bundle exec rails db:seed
