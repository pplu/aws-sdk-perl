# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::AddApplicationOutputResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_OutputDescription/;
  has ApplicationARN => (is => 'ro', isa => Str);
  has ApplicationVersionId => (is => 'ro', isa => Int);
  has OutputDescriptions => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_OutputDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationARN' => {
                                     'type' => 'Str'
                                   },
               'OutputDescriptions' => {
                                         'type' => 'ArrayRef[KinesisAnalyticsV2_OutputDescription]',
                                         'class' => 'Paws::KinesisAnalyticsV2::OutputDescription'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApplicationVersionId' => {
                                           'type' => 'Int'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationOutputResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The application Amazon Resource Name (ARN).


=head2 ApplicationVersionId => Int

The updated application version ID. Kinesis Data Analytics increments
this ID when the application is updated.


=head2 OutputDescriptions => ArrayRef[KinesisAnalyticsV2_OutputDescription]

Describes the application output configuration. For more information,
see Configuring Application Output
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).


=head2 _request_id => Str


=cut

1;