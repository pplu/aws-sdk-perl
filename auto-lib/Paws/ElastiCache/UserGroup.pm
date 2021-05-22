
package Paws::ElastiCache::UserGroup;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has PendingChanges => (is => 'ro', isa => 'Paws::ElastiCache::UserGroupPendingChanges');
  has ReplicationGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');
  has UserGroupId => (is => 'ro', isa => 'Str');
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::UserGroup

=head1 ATTRIBUTES


=head2 ARN => Str

The Amazon Resource Name (ARN) of the user group.


=head2 Engine => Str

The current supported value is Redis.


=head2 PendingChanges => L<Paws::ElastiCache::UserGroupPendingChanges>

A list of updates being applied to the user groups.


=head2 ReplicationGroups => ArrayRef[Str|Undef]

A list of replication groups that the user group can access.


=head2 Status => Str

Indicates user group status. Can be "creating", "active", "modifying",
"deleting".


=head2 UserGroupId => Str

The ID of the user group.


=head2 UserIds => ArrayRef[Str|Undef]

The list of user IDs that belong to the user group.


=head2 _request_id => Str


=cut

