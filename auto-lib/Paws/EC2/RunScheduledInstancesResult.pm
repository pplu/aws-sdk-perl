
package Paws::EC2::RunScheduledInstancesResult;
  use Moose;
  has InstanceIdSet => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'instanceIdSet', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RunScheduledInstancesResult

=head1 ATTRIBUTES


=head2 InstanceIdSet => ArrayRef[Str|Undef]

The IDs of the newly launched instances.




=cut

