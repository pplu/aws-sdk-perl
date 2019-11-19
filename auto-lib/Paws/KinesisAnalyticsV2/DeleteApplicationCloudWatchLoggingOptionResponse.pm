# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::DeleteApplicationCloudWatchLoggingOptionResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_CloudWatchLoggingOptionDescription/;
  has ApplicationARN => (is => 'ro', isa => Str);
  has ApplicationVersionId => (is => 'ro', isa => Int);
  has CloudWatchLoggingOptionDescriptions => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_CloudWatchLoggingOptionDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationARN' => {
                                     'type' => 'Str'
                                   },
               'CloudWatchLoggingOptionDescriptions' => {
                                                          'type' => 'ArrayRef[KinesisAnalyticsV2_CloudWatchLoggingOptionDescription]',
                                                          'class' => 'Paws::KinesisAnalyticsV2::CloudWatchLoggingOptionDescription'
                                                        },
               'ApplicationVersionId' => {
                                           'type' => 'Int'
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

Paws::KinesisAnalyticsV2::DeleteApplicationCloudWatchLoggingOptionResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The application's Amazon Resource Name (ARN).


=head2 ApplicationVersionId => Int

The version ID of the application. Kinesis Data Analytics updates the
C<ApplicationVersionId> each time you change the CloudWatch logging
options.


=head2 CloudWatchLoggingOptionDescriptions => ArrayRef[KinesisAnalyticsV2_CloudWatchLoggingOptionDescription]

The descriptions of the remaining CloudWatch logging options for the
application.


=head2 _request_id => Str


=cut

1;