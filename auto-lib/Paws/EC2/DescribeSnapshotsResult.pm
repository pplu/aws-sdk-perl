
package Paws::EC2::DescribeSnapshotsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Snapshot]', traits => ['Unwrapped'], xmlname => 'snapshotSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSnapshotsResult

=head1 ATTRIBUTES

=head2 Snapshots => ArrayRef[Paws::EC2::Snapshot]

  


=cut

