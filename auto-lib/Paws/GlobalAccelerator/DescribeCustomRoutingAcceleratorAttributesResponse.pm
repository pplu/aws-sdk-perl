
package Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorAttributesResponse;
  use Moose;
  has AcceleratorAttributes => (is => 'ro', isa => 'Paws::GlobalAccelerator::CustomRoutingAcceleratorAttributes');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorAttributesResponse

=head1 ATTRIBUTES


=head2 AcceleratorAttributes => L<Paws::GlobalAccelerator::CustomRoutingAcceleratorAttributes>

The attributes of the custom routing accelerator.


=head2 _request_id => Str


=cut

1;