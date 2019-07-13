
package Paws::GlobalAccelerator::UpdateAcceleratorResponse;
  use Moose;
  has Accelerator => (is => 'ro', isa => 'Paws::GlobalAccelerator::Accelerator');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateAcceleratorResponse

=head1 ATTRIBUTES


=head2 Accelerator => L<Paws::GlobalAccelerator::Accelerator>

Information about the updated accelerator.


=head2 _request_id => Str


=cut

1;