
package Paws::EC2::DisableFastSnapshotRestoresResult;
  use Moose;
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DisableFastSnapshotRestoreSuccessItem]', request_name => 'successful', traits => ['NameInRequest',]);
  has Unsuccessful => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DisableFastSnapshotRestoreErrorItem]', request_name => 'unsuccessful', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableFastSnapshotRestoresResult

=head1 ATTRIBUTES


=head2 Successful => ArrayRef[L<Paws::EC2::DisableFastSnapshotRestoreSuccessItem>]

Information about the snapshots for which fast snapshot restores were
successfully disabled.


=head2 Unsuccessful => ArrayRef[L<Paws::EC2::DisableFastSnapshotRestoreErrorItem>]

Information about the snapshots for which fast snapshot restores could
not be disabled.


=head2 _request_id => Str


=cut

