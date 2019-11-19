# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::CreateApplicationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_ApplicationDetail/;
  has ApplicationDetail => (is => 'ro', isa => KinesisAnalyticsV2_ApplicationDetail, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ApplicationDetail' => 1
                  },
  'types' => {
               'ApplicationDetail' => {
                                        'type' => 'KinesisAnalyticsV2_ApplicationDetail',
                                        'class' => 'Paws::KinesisAnalyticsV2::ApplicationDetail'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationDetail => KinesisAnalyticsV2_ApplicationDetail

In response to your C<CreateApplication> request, Kinesis Data
Analytics returns a response with details of the application it
created.


=head2 _request_id => Str


=cut

1;