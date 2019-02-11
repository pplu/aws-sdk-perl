
package Paws::GlobalAccelerator::ListEndpointGroupsResponse;
  use Moose;
  has EndpointGroups => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::EndpointGroup]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListEndpointGroupsResponse

=head1 ATTRIBUTES


=head2 EndpointGroups => ArrayRef[L<Paws::GlobalAccelerator::EndpointGroup>]

The list of the endpoint groups associated with a listener.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

1;