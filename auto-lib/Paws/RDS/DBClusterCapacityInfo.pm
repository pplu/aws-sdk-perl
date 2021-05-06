
package Paws::RDS::DBClusterCapacityInfo;
  use Moose;
  has CurrentCapacity => (is => 'ro', isa => 'Int');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has PendingCapacity => (is => 'ro', isa => 'Int');
  has SecondsBeforeTimeout => (is => 'ro', isa => 'Int');
  has TimeoutAction => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterCapacityInfo

=head1 ATTRIBUTES


=head2 CurrentCapacity => Int

The current capacity of the DB cluster.


=head2 DBClusterIdentifier => Str

A user-supplied DB cluster identifier. This identifier is the unique
key that identifies a DB cluster.


=head2 PendingCapacity => Int

A value that specifies the capacity that the DB cluster scales to next.


=head2 SecondsBeforeTimeout => Int

The number of seconds before a call to
C<ModifyCurrentDBClusterCapacity> times out.


=head2 TimeoutAction => Str

The timeout action of a call to C<ModifyCurrentDBClusterCapacity>,
either C<ForceApplyCapacityChange> or C<RollbackCapacityChange>.


=head2 _request_id => Str


=cut

