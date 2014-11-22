package Paws::Net::Credentials {
  use Moose::Role;

  requires 'access_key';
  requires 'secret_key';
  requires 'session_token';
  #has access_key    => (is => 'rw');
  #has secret_key    => (is => 'rw');
  #has session_token => (is => 'rw');

  sub are_set {
    my $self = shift;
    return (defined $self->access_key && defined $self->secret_key);
  }

  no Moose;
}

1;
