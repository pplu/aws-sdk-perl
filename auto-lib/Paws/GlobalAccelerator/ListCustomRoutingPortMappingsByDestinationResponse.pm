
package Paws::GlobalAccelerator::ListCustomRoutingPortMappingsByDestinationResponse;
  use Moose;
  has DestinationPortMappings => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::DestinationPortMapping]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListCustomRoutingPortMappingsByDestinationResponse

=head1 ATTRIBUTES


=head2 DestinationPortMappings => ArrayRef[L<Paws::GlobalAccelerator::DestinationPortMapping>]

The port mappings for the endpoint IP address that you specified in the
request.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

1;