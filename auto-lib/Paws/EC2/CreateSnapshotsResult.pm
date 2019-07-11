
package Paws::EC2::CreateSnapshotsResult;
  use Moose;
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SnapshotInfo]', request_name => 'snapshotSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSnapshotsResult

=head1 ATTRIBUTES


=head2 Snapshots => ArrayRef[L<Paws::EC2::SnapshotInfo>]

List of snapshots.


=head2 _request_id => Str


=cut

