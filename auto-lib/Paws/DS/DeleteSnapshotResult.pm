
package Paws::DS::DeleteSnapshotResult;
  use Moose;
  has SnapshotId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DeleteSnapshotResult

=head1 ATTRIBUTES


=head2 SnapshotId => Str

The identifier of the directory snapshot that was deleted.


=head2 _request_id => Str


=cut

1;