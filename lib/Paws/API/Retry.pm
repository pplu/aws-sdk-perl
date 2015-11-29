package Paws::API::Retry;
  use Moose;
  use Paws::Exception;  
  
  has max_tries => (is => 'ro', required => 1);
  has type => (is => 'ro', required => 1);
  has base => (is => 'ro', required => 1, isa => 'Num');
  has growth_factor => (is => 'ro', isa => 'Int');

  has tries => (is => 'rw', default => 0);
  has error_for_die => (is => 'rw');
  has operation_result => (is => 'rw');

  has generator => (is => 'ro');

  around BUILDARGS => sub {
    my ($orig, $class, %args) = @_;

    my $base = $args{ base };
    $base = rand() if ($args{ base } eq 'rand');
    $base = 0.01 if ($base == 0);
    $args{ base } = $base;

    if ($args{ type } eq 'exponential') {
      $args{ generator } = sub {
        my $self = shift;
        $self->base * ($self->growth_factor * ($self->tries - 1))
      };
    } else {
      die "Don't know how to make a retry type of $args{ type }";
    }

    return $class->$orig(%args);
  };

  sub should_retry {
    my $self = shift;
    my $res = $self->operation_result;

    if ($self->result_is_exception and $self->_still_has_retries){
      return 1;
    }
    return 0; #Anything not exception should not be retried
  }

  sub result_is_exception {
    my $self = shift;

    die "Don't have an operation_result set yet" if (not defined $self->operation_result);

    return 0 if (not ref($self->operation_result));                  # Scalar results
    return 1 if (ref($self->operation_result) eq 'Paws::Exception'); # Exceptions
    return 0;                                                        # Rest of objects
  }
  
  sub one_more_try {
    my $self = shift;
    $self->tries($self->tries + 1);
  }
  
  sub sleep_time { 
    my $self = shift;
    return $self->generator->($self);
  }

  sub _still_has_retries {
    my $self = shift;
    $self->tries < $self->max_tries;
  }
  
  sub _is_retriable {
    my $self = shift;
    # TODO: evaluate if the error is retriable depending on class definition
    return 1;
  }
  
  __PACKAGE__->meta->make_immutable;
  
1;
