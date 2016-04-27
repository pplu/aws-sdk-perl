package Paws::API::Retry;
  use Moose;
  use Paws::Exception;  
  
  has max_tries => (is => 'ro', required => 1);
  has type => (is => 'ro', required => 1);

  has tries => (is => 'rw', default => 0);

  has retry_rules => (is => 'ro', required => 1);

  has error_for_die => (is => 'rw');
  has operation_result => (is => 'rw');

  has generator => (is => 'ro');

  around BUILDARGS => sub {
    my ($orig, $class, %args) = @_;

    if ($args{ type } eq 'exponential') {
      $args{ generator } = sub {
        my $self = shift;
        (2 ** ($self->tries - 2)) + (rand(1) / 2);
      };
    } else {
      die "Don't know how to make a retry type of $args{ type }";
    }

    return $class->$orig(%args);
  };

  sub should_retry {
    my $self = shift;
    my $res = $self->operation_result;

    if ($self->result_is_exception and $self->_still_has_retries and $self->exception_is_retriable){
      return 1;
    }
    return 0; #Anything not exception should not be retried
  }

  sub exception_is_retriable {
    my $self = shift;
    my @default_rules = sub { [
      #general_server_error
      sub { defined $_[0]->http_status and $_[0]->http_status == 500 },
      #service_unavailable
      sub { defined $_[0]->http_status and $_[0]->http_status == 503 },
      #limit_exceeded"
      sub { defined $_[0]->http_status and $_[0]->http_status == 509 },
      #throttling_exception
      sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'ThrottlingException' },
      #throttling
      sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'Throttling' },
      #too_many_requests
      sub { defined $_[0]->http_status and $_[0]->http_status == 429 },
    ] };

    #general_socket_errors
    return 1 if ($self->operation_result->code eq 'ConnectionError');

	#First we try the Service's retriables
    foreach my $rule (@{ $self->retry_rules }){
      return 1 if ($rule->($self->operation_result));
	}

    #Next we try the default retriables
    foreach my $rule (@default_rules){
      return 1 if ($rule->($self->operation_result));
    }
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
