use Paws::JsonParamsService::Method2;

package Paws::QueryFlattenedParamsService;
  use Moose;
  sub service { 'queryflattenedparams' }
  sub version { '2016-09-25' }
  sub flattened_arrays { 1 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 403 and $_[0]->code eq 'RequestThrottled' },
  ] });

  sub operations { return () }

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  sub Method2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method2', @_);
    return $self->caller->do_call($self, $call_object);
  }
1;
