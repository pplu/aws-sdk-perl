package Paws::API::Caller::Retry;
  use Moose::Role;
  
  requires 'do_call';
  
  has max_tries  => (is => 'ro', required => 1);
  has retry_type => (is => 'ro', required => 1);
  has retry_base    => (is => 'ro', required => 1);
  has growth_factor => (is => 'ro', isa => 'Int', default => 2);

  has tries => (is => 'rw', default => 1);
  
  
  
  around 'do_call' => sub {
    my $self = shift;
    my $orig = shift;
    
    my $res;
    do {
      $res = $self->$orig(@_);
      
      $self->tries($self->tries - 1);
    } while ($self->is_throttling($res) and $self->has_tries_left);
    
    return $res;
  };
  
  
  sub is_throttling {
    # verify res status
    # state of mapping between response error and it being a throlling @ service classes
  }
1;
