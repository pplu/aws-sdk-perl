
package Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorAttributesResponse;
  use Moose;
  has AcceleratorAttributes => (is => 'ro', isa => 'Paws::GlobalAccelerator::CustomRoutingAcceleratorAttributes');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorAttributesResponse

=head1 ATTRIBUTES


=head2 AcceleratorAttributes => L<Paws::GlobalAccelerator::CustomRoutingAcceleratorAttributes>

Updated custom routing accelerator.


=head2 _request_id => Str


=cut

1;