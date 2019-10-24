# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::DescribeApplicationSnapshotResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_SnapshotDetails/;
  has SnapshotDetails => (is => 'ro', isa => KinesisAnalyticsV2_SnapshotDetails, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SnapshotDetails' => {
                                      'class' => 'Paws::KinesisAnalyticsV2::SnapshotDetails',
                                      'type' => 'KinesisAnalyticsV2_SnapshotDetails'
                                    }
             },
  'IsRequired' => {
                    'SnapshotDetails' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DescribeApplicationSnapshotResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotDetails => KinesisAnalyticsV2_SnapshotDetails

An object containing information about the application snapshot.


=head2 _request_id => Str


=cut

1;