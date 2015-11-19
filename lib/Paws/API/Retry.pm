package Paws::API::Retry;
  use Moose;
  has max_tries => (is => 'ro', required => 1);
  has type => (is => 'ro', required => 1);
  has base => (is => 'ro', required => 1);
  has growth_factor => (is => 'ro', isa => 'Int');

  has tries => (is => 'rw', default => 0);
  has error_for_die => (is => 'rw');
  has return => (is => 'rw');

  sub sleep_time { 
    my $self = shift;
  }

  sub one_more_try {
    my $self = shift;
    $self->tries($self->tries + 1);
  }

  sub still_has_retries {
    my $self = shift;
    $self->tries < $self->max_tries;
  }

  sub can_retry {
    my $self = shift;
    # TODO: and evaluate if the error is retriable
    $self->still_has_retries;
  }

  __PACKAGE__->meta->make_immutable;
1;
