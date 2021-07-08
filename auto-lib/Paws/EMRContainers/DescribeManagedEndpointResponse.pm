
package Paws::EMRContainers::DescribeManagedEndpointResponse;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Paws::EMRContainers::Endpoint', traits => ['NameInRequest'], request_name => 'endpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DescribeManagedEndpointResponse

=head1 ATTRIBUTES


=head2 Endpoint => L<Paws::EMRContainers::Endpoint>

This output displays information about a managed endpoint.


=head2 _request_id => Str


=cut

