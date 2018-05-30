# Rails ActiveAdmin React Template

A blend of rock-solid CMS and API with the absolute best in front-end tooling, built as a single project and hosted seamlessly on Heroku.

##### Inspired by
[A Rock Solid, Modern Web Stack—Rails 5 API + ActiveAdmin + Create React App on Heroku](https://blog.heroku.com/a-rock-solid-modern-web-stack)

### Requirements
* Rails version
`>= 5.2.0`

* Ruby version
`>= 2.4.1`

* Node and NPM
`>= 8.9.4 (npm v5.6.0)`

* ActiveAdmin
`v1.3.0`

## Getting Started

Clone this repository

Bundle gem dependencies

```bash
$ bundle install
```

Database creation and initialization

```bash
$ bundle exec rake db:create
$ bundle exec rake db:migrate
```

Start the server

```bash
$ bin/rails server -p 3001
```

How to run the test suite

```bash
$ bundle exec rspec
```

Services (job queues, cache servers, search engines, etc.)

Deployment instructions

## Contributing
* Fork this repository and clone locally.
* Create an upstream remote and sync your local copy before you branch.
* Branch for each separate piece of work.
* Push to your origin repository.
* Create a new Pull Request, ensure that the "base fork" points to the correct repository and branch.


License
----

MIT
