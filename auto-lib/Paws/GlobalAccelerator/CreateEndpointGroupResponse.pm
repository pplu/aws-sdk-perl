
package Paws::GlobalAccelerator::CreateEndpointGroupResponse;
  use Moose;
  has EndpointGroup => (is => 'ro', isa => 'Paws::GlobalAccelerator::EndpointGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::CreateEndpointGroupResponse

=head1 ATTRIBUTES


=head2 EndpointGroup => L<Paws::GlobalAccelerator::EndpointGroup>

The information about the endpoint group that was created.


=head2 _request_id => Str


=cut

1;