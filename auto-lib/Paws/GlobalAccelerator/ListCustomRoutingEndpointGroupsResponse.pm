
package Paws::GlobalAccelerator::ListCustomRoutingEndpointGroupsResponse;
  use Moose;
  has EndpointGroups => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::CustomRoutingEndpointGroup]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListCustomRoutingEndpointGroupsResponse

=head1 ATTRIBUTES


=head2 EndpointGroups => ArrayRef[L<Paws::GlobalAccelerator::CustomRoutingEndpointGroup>]

The list of the endpoint groups associated with a listener for a custom
routing accelerator.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

1;