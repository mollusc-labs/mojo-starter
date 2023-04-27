# mojo-starter
Simple starter for a Mojolicious microservice using 
Bread::Board, Mojolicious, DBIx::Class (optional), and Docker.

## Getting started

#### Get Perl
Install Perl v5.36 via [Perlbrew](https://perlbrew.pl).

#### Install App::cpanminus
Make sure you have `cpanm` installed, you can install it with:

```bash
cpan App::cpanminus
```

#### Install service dependencies
To install service dependencies you can use `cpanm`:

```bash
cpanm --installdeps . 
```

This may take 1-5 minutes depending on your computer and internet speed (compilation + testing takes a while).

#### Running the application in development
You can now run the application in development via:

```bash
morbo app.pl
```

If you elect to use a database with this service skip to the end for running the database in development.

#### Running in production
You'll need `docker` and `docker-compose`, then run the following:

```bash
docker-compose up -d
```

#### How to run a development database locally
Create a `.env` file that will store your database connection information.

For a postgres setup, that should be:

```bash
POSTGRES_PASSWORD=my_password
POSTGRES_USER=my_user
```

You'll need `docker` and `docker-compose`, then run the following:

```bash
docker-compose up -d db
```
