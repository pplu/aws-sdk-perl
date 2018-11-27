
package Paws::GlobalAccelerator::DescribeAcceleratorResponse;
  use Moose;
  has Accelerator => (is => 'ro', isa => 'Paws::GlobalAccelerator::Accelerator');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeAcceleratorResponse

=head1 ATTRIBUTES


=head2 Accelerator => L<Paws::GlobalAccelerator::Accelerator>

The description of the accelerator.


=head2 _request_id => Str


=cut

1;