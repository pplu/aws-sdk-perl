use Paws::JsonParamsService::Method1;

package Paws::JsonParamsService;
  use Moose;
  sub service { 'jsonparams' }
  sub version { '2016-09-25' }
  sub target_prefix { 'JsonParams' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  sub operations { qw/Method1 Method2/ }

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  sub Method1 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method1', @_);
    return $self->caller->do_call($self, $call_object);
  }
1;
