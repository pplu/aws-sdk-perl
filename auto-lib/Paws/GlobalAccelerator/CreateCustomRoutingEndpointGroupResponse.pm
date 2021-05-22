
package Paws::GlobalAccelerator::CreateCustomRoutingEndpointGroupResponse;
  use Moose;
  has EndpointGroup => (is => 'ro', isa => 'Paws::GlobalAccelerator::CustomRoutingEndpointGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::CreateCustomRoutingEndpointGroupResponse

=head1 ATTRIBUTES


=head2 EndpointGroup => L<Paws::GlobalAccelerator::CustomRoutingEndpointGroup>

The information about the endpoint group created for a custom routing
accelerator.


=head2 _request_id => Str


=cut

1;