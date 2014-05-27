# Background Jobs

A place where students can go to learn about how to use background jobs.

## Redis

You will need to install redis, `brew install redis`, to use Resque.

## Mailcatcher

The development environment is set up to use [Mailcatcher](http://mailcatcher.me/).

## Running worker process

`TERM_CHILD=1 QUEUES=* rake environment resque:work`

## Running on Heroku

1. Add Redis To Go to your application: `heroku addons:add redistogo`
1. Add the [Foreman gem](https://github.com/ddollar/foreman). This will allow you to run 
both your web and workers locally using the same file that Heroku will use.
1. Create a Procfile to run your workers on Heroku. See Procfile.
1. Configure Redis URL so Resque knows where to find it. See config/initializers/resque.rb