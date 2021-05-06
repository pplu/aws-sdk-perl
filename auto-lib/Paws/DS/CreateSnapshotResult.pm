
package Paws::DS::CreateSnapshotResult;
  use Moose;
  has SnapshotId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::CreateSnapshotResult

=head1 ATTRIBUTES


=head2 SnapshotId => Str

The identifier of the snapshot that was created.


=head2 _request_id => Str


=cut

1;