[![Coverage Status](https://coveralls.io/repos/bagolol/chitter/badge.svg?branch=master&service=github)](https://coveralls.io/github/bagolol/chitter-challenge?branch=master)  [![Code Climate](https://codeclimate.com/github/bagolol/chitter-challenge/badges/gpa.svg)](https://codeclimate.com/github/bagolol/chitter-challenge)


Chitter
=================


Brief:
-------

A Twitter clone that allows users to post short messages to a public stream


Technologies used:
-------

- Ruby on Sinatra
- PostgreSQL Database (using DataMapper)
- Tested using RSpec


Site setup:
-------

- Run site on local server: `$ rackup`


Testing setup:
-------

- Run RSpec tests: `$ rspec`


User stories:
-------

```
As a new user
So that I can post messages on Chitter as me
I want to sign up for Chitter

As a user
So that I can post messages on Chitter as me
I want to log in to Chitter

As a security conscious user
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

As a security conscious user
So that others cannot log into my account
I want to validate the login process with a secret password

As a user
So that I can let people know what I am doing
I want to post a message (peep) to chitter

As a user
So that I can which peeps are attributed to which user
I want this information displayed alongside each peep

As a user
So that I can better appreciate the context of a peep
I want to see the time at which it was made

```

Next steps:
-------

- add password recovery
- add reply to tweet
- Additional tests to ensure no blank entries and to limit the peep length
- Deploy to Heroku

Screenshot:
-------

![homepage](/public/img/homepage.jpg)


Links:
-------

[Makers Academy: Chitter Challenge brief](https://github.com/makersacademy/chitter-challenge)

[Makers Academy: Bookmark Manager tutorial](https://github.com/makersacademy/course/blob/master/bookmark_manager/bookmark_manager.md)


