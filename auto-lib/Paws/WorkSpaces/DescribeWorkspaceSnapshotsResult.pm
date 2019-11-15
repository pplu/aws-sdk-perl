
package Paws::WorkSpaces::DescribeWorkspaceSnapshotsResult;
  use Moose;
  has RebuildSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Snapshot]');
  has RestoreSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Snapshot]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceSnapshotsResult

=head1 ATTRIBUTES


=head2 RebuildSnapshots => ArrayRef[L<Paws::WorkSpaces::Snapshot>]

Information about the snapshots that can be used to rebuild a
WorkSpace. These snapshots include the user volume.


=head2 RestoreSnapshots => ArrayRef[L<Paws::WorkSpaces::Snapshot>]

Information about the snapshots that can be used to restore a
WorkSpace. These snapshots include both the root volume and the user
volume.


=head2 _request_id => Str


=cut

1;