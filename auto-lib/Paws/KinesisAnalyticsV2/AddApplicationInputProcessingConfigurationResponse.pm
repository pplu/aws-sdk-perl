# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::AddApplicationInputProcessingConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_InputProcessingConfigurationDescription/;
  has ApplicationARN => (is => 'ro', isa => Str);
  has ApplicationVersionId => (is => 'ro', isa => Int);
  has InputId => (is => 'ro', isa => Str);
  has InputProcessingConfigurationDescription => (is => 'ro', isa => KinesisAnalyticsV2_InputProcessingConfigurationDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationVersionId' => {
                                           'type' => 'Int'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InputProcessingConfigurationDescription' => {
                                                              'class' => 'Paws::KinesisAnalyticsV2::InputProcessingConfigurationDescription',
                                                              'type' => 'KinesisAnalyticsV2_InputProcessingConfigurationDescription'
                                                            },
               'InputId' => {
                              'type' => 'Str'
                            },
               'ApplicationARN' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationInputProcessingConfigurationResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The Amazon Resource Name (ARN) of the application.


=head2 ApplicationVersionId => Int

Provides the current application version.


=head2 InputId => Str

The input ID that is associated with the application input. This is the
ID that Amazon Kinesis Data Analytics assigns to each input
configuration that you add to your application.


=head2 InputProcessingConfigurationDescription => KinesisAnalyticsV2_InputProcessingConfigurationDescription

The description of the preprocessor that executes on records in this
input before the application's code is run.


=head2 _request_id => Str


=cut

1;