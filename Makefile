# Using as a guide https://github.com/phusion/baseimage-docker/blob/master/Makefile
# Used to create this project from [seed](https://github.com/smoll/docker-rails-seed#general-usage)
.PHONY: all new

all: new

new:
	cp bootstrap/Gemfile Gemfile
	docker-compose run web rails new . --force --database=postgresql --skip-bundle
	cp bootstrap/database.yml config/database.yml
	docker-compose build
	cp bootstrap/README.md README.md
	rm Makefile .dockerignore && rm -rf bootstrap
