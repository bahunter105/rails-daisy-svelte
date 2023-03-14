#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec bin/rake assets:precompile
bundle exec bin/rake assets:clean
bundle exec bin/rake db:migrate
