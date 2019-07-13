
package Paws::GlobalAccelerator::CreateAcceleratorResponse;
  use Moose;
  has Accelerator => (is => 'ro', isa => 'Paws::GlobalAccelerator::Accelerator');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::CreateAcceleratorResponse

=head1 ATTRIBUTES


=head2 Accelerator => L<Paws::GlobalAccelerator::Accelerator>

The accelerator that is created by specifying a listener and the
supported IP address types.


=head2 _request_id => Str


=cut

1;