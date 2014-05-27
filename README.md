# Background Jobs

A place where students can go to learn about how to use background jobs.

## Redis

You will need to install redis, `brew install redis`, to use Resque.

## Mailcatcher

The development environment is set up to use [Mailcatcher](http://mailcatcher.me/).

## Running worker process

`TERM_CHILD=1 QUEUES=* rake environment resque:work`