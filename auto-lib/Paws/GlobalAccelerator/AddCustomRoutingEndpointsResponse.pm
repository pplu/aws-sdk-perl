
package Paws::GlobalAccelerator::AddCustomRoutingEndpointsResponse;
  use Moose;
  has EndpointDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::CustomRoutingEndpointDescription]');
  has EndpointGroupArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::AddCustomRoutingEndpointsResponse

=head1 ATTRIBUTES


=head2 EndpointDescriptions => ArrayRef[L<Paws::GlobalAccelerator::CustomRoutingEndpointDescription>]

The endpoint objects added to the custom routing accelerator.


=head2 EndpointGroupArn => Str

The Amazon Resource Name (ARN) of the endpoint group for the custom
routing endpoint.


=head2 _request_id => Str


=cut

1;