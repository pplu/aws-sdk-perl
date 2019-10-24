# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::ListApplicationSnapshotsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_SnapshotDetails/;
  has NextToken => (is => 'ro', isa => Str);
  has SnapshotSummaries => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_SnapshotDetails]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SnapshotSummaries' => {
                                        'class' => 'Paws::KinesisAnalyticsV2::SnapshotDetails',
                                        'type' => 'ArrayRef[KinesisAnalyticsV2_SnapshotDetails]'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListApplicationSnapshotsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or C<null> if there are no
additional results.


=head2 SnapshotSummaries => ArrayRef[KinesisAnalyticsV2_SnapshotDetails]

A collection of objects containing information about the application
snapshots.


=head2 _request_id => Str


=cut

1;