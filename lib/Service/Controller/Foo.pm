package Service::Controller::Foo;

use strict;
use warnings;
use Mojo::Base 'Mojolicious::Controller', -signatures;

sub hello ($self) {
  $self->render( text => '<h1>Hello World!</h1>' );
}

1;
