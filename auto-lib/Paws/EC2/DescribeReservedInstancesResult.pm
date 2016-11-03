
package Paws::EC2::DescribeReservedInstancesResult;
  use Moose;
  has ReservedInstances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReservedInstances]', request_name => 'reservedInstancesSet', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReservedInstancesResult

=head1 ATTRIBUTES


=head2 ReservedInstances => ArrayRef[L<Paws::EC2::ReservedInstances>]

A list of Reserved Instances.




=cut

