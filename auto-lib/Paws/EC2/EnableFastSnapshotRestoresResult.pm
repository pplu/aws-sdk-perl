
package Paws::EC2::EnableFastSnapshotRestoresResult;
  use Moose;
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::EC2::EnableFastSnapshotRestoreSuccessItem]', request_name => 'successful', traits => ['NameInRequest',]);
  has Unsuccessful => (is => 'ro', isa => 'ArrayRef[Paws::EC2::EnableFastSnapshotRestoreErrorItem]', request_name => 'unsuccessful', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableFastSnapshotRestoresResult

=head1 ATTRIBUTES


=head2 Successful => ArrayRef[L<Paws::EC2::EnableFastSnapshotRestoreSuccessItem>]

Information about the snapshots for which fast snapshot restores were
successfully enabled.


=head2 Unsuccessful => ArrayRef[L<Paws::EC2::EnableFastSnapshotRestoreErrorItem>]

Information about the snapshots for which fast snapshot restores could
not be enabled.


=head2 _request_id => Str


=cut

