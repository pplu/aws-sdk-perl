# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::DescribeApplicationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_ApplicationDetail/;
  has ApplicationDetail => (is => 'ro', isa => KinesisAnalyticsV2_ApplicationDetail, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApplicationDetail' => {
                                        'type' => 'KinesisAnalyticsV2_ApplicationDetail',
                                        'class' => 'Paws::KinesisAnalyticsV2::ApplicationDetail'
                                      }
             },
  'IsRequired' => {
                    'ApplicationDetail' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DescribeApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationDetail => KinesisAnalyticsV2_ApplicationDetail

Provides a description of the application, such as the application's
Amazon Resource Name (ARN), status, and latest version.


=head2 _request_id => Str


=cut

1;