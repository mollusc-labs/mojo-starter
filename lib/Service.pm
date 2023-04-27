package Service;

use strict;
use warnings;
use v5.36;

use Mojo::Base 'Mojolicious', -signatures;
use Mojo::Log;
use Bread::Board;

our $VERSION = '0.0.1';

my $deps = container 'Service' => as {

  # Declare your dependency injection targets here
};

no Bread::Board;

sub startup ($self) {

  # Declare your helpers here, pulling from the DI container
  # i.e: $self->helper( dashboard_validator => sub { return $deps->resolve( service => 'Validator/dashboard' ) } );

  # Mojo by default in production will only log errors and up.
  # We can make it log all levels by setting log level to trace.
  my $log = Mojo::Log->new( level => 'trace' );
  $self->app->log($log);

  # Define the REST router, this will lookup your controllers in
  # lib/Service/Controller directory, then to bind a subroutine from
  # the controller to the route you specify the name, followed by
  # the subroutine, and separate them with a '#'
  my $router = $self->routes->namespaces( ['Service::Controller'] );

  # This points / to the Foo controller, and sub-routine 'hello'.
  # It is good practice to name your end-points as well, for debugging.
  $router->get('/')->to('foo#hello')->name('foo_hello');
}

1;
