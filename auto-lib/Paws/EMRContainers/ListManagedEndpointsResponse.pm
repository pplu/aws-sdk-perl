
package Paws::EMRContainers::ListManagedEndpointsResponse;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::EMRContainers::Endpoint]', traits => ['NameInRequest'], request_name => 'endpoints');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::ListManagedEndpointsResponse

=head1 ATTRIBUTES


=head2 Endpoints => ArrayRef[L<Paws::EMRContainers::Endpoint>]

The managed endpoints to be listed.


=head2 NextToken => Str

The token for the next set of endpoints to return.


=head2 _request_id => Str


=cut

