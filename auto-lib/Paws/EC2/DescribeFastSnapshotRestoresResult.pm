
package Paws::EC2::DescribeFastSnapshotRestoresResult;
  use Moose;
  has FastSnapshotRestores => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DescribeFastSnapshotRestoreSuccessItem]', request_name => 'fastSnapshotRestoreSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFastSnapshotRestoresResult

=head1 ATTRIBUTES


=head2 FastSnapshotRestores => ArrayRef[L<Paws::EC2::DescribeFastSnapshotRestoreSuccessItem>]

Information about the state of fast snapshot restores.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

