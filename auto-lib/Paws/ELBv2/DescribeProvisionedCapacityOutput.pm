
package Paws::ELBv2::DescribeProvisionedCapacityOutput;
  use Moose;
  has ProvisionedCapacity => (is => 'ro', isa => 'Paws::ELBv2::ProvisionedCapacity');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeProvisionedCapacityOutput

=head1 ATTRIBUTES


=head2 ProvisionedCapacity => L<Paws::ELBv2::ProvisionedCapacity>




=head2 _request_id => Str


=cut

