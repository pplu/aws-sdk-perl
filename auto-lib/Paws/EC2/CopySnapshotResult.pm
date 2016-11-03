
package Paws::EC2::CopySnapshotResult;
  use Moose;
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopySnapshotResult

=head1 ATTRIBUTES


=head2 SnapshotId => Str

The ID of the new snapshot.




=cut

