
package Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorResponse;
  use Moose;
  has Accelerator => (is => 'ro', isa => 'Paws::GlobalAccelerator::CustomRoutingAccelerator');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorResponse

=head1 ATTRIBUTES


=head2 Accelerator => L<Paws::GlobalAccelerator::CustomRoutingAccelerator>

Information about the updated custom routing accelerator.


=head2 _request_id => Str


=cut

1;