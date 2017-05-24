docker_cron
==========

This is just a big "gist" on how to get make environment variables set through the docker run command visible to a cronjob.

I couldn't find any examples of how to do this so this is how I accomplished it.

When cron executes your cronjob just about nothing in the envrionment is available.  Certainly no env vars that were set in the Dockerfile and certainly no env files that were set as args to docker run. 

This works by requiring docker run to invoke a script which sets up the cron.env file and starts cron.  From there it is trivial for the cronjob to read env variables.
