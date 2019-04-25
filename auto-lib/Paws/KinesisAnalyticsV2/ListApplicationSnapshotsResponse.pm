
package Paws::KinesisAnalyticsV2::ListApplicationSnapshotsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SnapshotSummaries => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::SnapshotDetails]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListApplicationSnapshotsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or C<null> if there are no
additional results.


=head2 SnapshotSummaries => ArrayRef[L<Paws::KinesisAnalyticsV2::SnapshotDetails>]

A collection of objects containing information about the application
snapshots.


=head2 _request_id => Str


=cut

1;