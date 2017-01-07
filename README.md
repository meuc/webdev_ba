# Installation Guide

Prerequisites:
--------------

- Make sure PostgreSQL is installed. 
- Check if Ruby is installed at least at version 2.3.0.

Set up:
------

Run the following commands in the terminal from within the project folder:

$ gem install bundler
$ bundle install
$ bin/rake db:create
$ bin/rake db:migrate
$ bin/rake db:seed
$ bin/rails s
