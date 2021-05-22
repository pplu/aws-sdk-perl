
package Paws::GlobalAccelerator::DescribeCustomRoutingEndpointGroupResponse;
  use Moose;
  has EndpointGroup => (is => 'ro', isa => 'Paws::GlobalAccelerator::CustomRoutingEndpointGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeCustomRoutingEndpointGroupResponse

=head1 ATTRIBUTES


=head2 EndpointGroup => L<Paws::GlobalAccelerator::CustomRoutingEndpointGroup>

The description of an endpoint group for a custom routing accelerator.


=head2 _request_id => Str


=cut

1;