
package Paws::GlobalAccelerator::UpdateAcceleratorAttributesResponse;
  use Moose;
  has AcceleratorAttributes => (is => 'ro', isa => 'Paws::GlobalAccelerator::AcceleratorAttributes');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateAcceleratorAttributesResponse

=head1 ATTRIBUTES


=head2 AcceleratorAttributes => L<Paws::GlobalAccelerator::AcceleratorAttributes>

Updated attributes for the accelerator.


=head2 _request_id => Str


=cut

1;