
package Paws::EC2::CopySnapshotResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has SnapshotId => (is => 'ro', isa => 'Str', xmlname => 'snapshotId', traits => ['Unwrapped',]);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopySnapshotResult

=head1 ATTRIBUTES

=head2 SnapshotId => Str

  

The ID of the new snapshot.











=cut

