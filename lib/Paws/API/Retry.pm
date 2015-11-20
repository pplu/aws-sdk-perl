package Paws::API::Retry;
  use Moose;
  use Time::HiRes 'sleep';
  use Paws::Exception;  
  
  has max_tries => (is => 'ro', required => 1);
  has type => (is => 'ro', required => 1);
  has base => (is => 'ro', required => 1);
  has growth_factor => (is => 'ro', isa => 'Int');

  has tries => (is => 'rw', init_arg => undef, default => 0);
  has error_for_die => (is => 'rw');
  has return => (is => 'rw');


  
  # if    status == success   ==> retry = false
  # elsif status == not_ready ==> retry = true
  # elsif status == throttled ==> retry = true
  # else retry = false # something not related to throttling went wrong
  sub should_retry {
    my $self = shift;
    return 0  if($self->return);
    $self->error_for_die->throw  if($self->error_for_die and not $self->_still_has_retries);
    $self->error_for_die->throw  if(not $self->_is_retriable);
    $self->_still_has_retries;
  }
  
  
  sub backoff {
    sleep(shift->_sleep_time);  
  }
  

  sub one_more_try {
    my $self = shift;
    $self->tries($self->tries + 1);
  }
  
  
  sub handle_response {
    my ($self, $response, $service_response_handler) = @_;
    if ($response->{status} == 599){
        $self->error_for_die(Paws::Exception->new(message => $response->{content}, code => 'ConnectionError', request_id => ''));
    } else {
      my $res = $service_response_handler->();
      if (not ref($res)){
        $self->return($res);
      } elsif ($res->isa('Paws::Exception')) {
        $self->error_for_die($res);
      } else {
        $self->return($res);
      }
    }
  }
  
  
  sub _sleep_time { 
    my $self = shift;
    my $base = $self->base eq 'rand'
             ? 100 * (1 + rand)
             : 100;
    my $sleep_ms = $self->type eq 'exponential'
             ? $base ** ($self->growth_factor * ($self->tries - 1))
             : $base *  ($self->growth_factor * ($self->tries - 1));
    return $sleep_ms / 1000;
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
