
package Paws::KinesisAnalyticsV2::DescribeApplicationSnapshotResponse;
  use Moose;
  has SnapshotDetails => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::SnapshotDetails', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DescribeApplicationSnapshotResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotDetails => L<Paws::KinesisAnalyticsV2::SnapshotDetails>

An object containing information about the application snapshot.


=head2 _request_id => Str


=cut

1;