
package Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorResponse;
  use Moose;
  has Accelerator => (is => 'ro', isa => 'Paws::GlobalAccelerator::CustomRoutingAccelerator');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeCustomRoutingAcceleratorResponse

=head1 ATTRIBUTES


=head2 Accelerator => L<Paws::GlobalAccelerator::CustomRoutingAccelerator>

The description of the custom routing accelerator.


=head2 _request_id => Str


=cut

1;