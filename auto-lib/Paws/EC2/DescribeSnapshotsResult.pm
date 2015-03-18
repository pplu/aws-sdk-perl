
package Paws::EC2::DescribeSnapshotsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Snapshot]', traits => ['Unwrapped'], xmlname => 'snapshotSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSnapshotsResult

=head1 ATTRIBUTES

=head2 NextToken => Str

  

The C<NextToken> value to include in a future C<DescribeSnapshots>
request. When the results of a C<DescribeSnapshots> request exceed
C<MaxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.









=head2 Snapshots => ArrayRef[Paws::EC2::Snapshot]

  


=cut

