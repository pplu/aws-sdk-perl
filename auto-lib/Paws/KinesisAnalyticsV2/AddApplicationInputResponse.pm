# Generated from json/callresult_class.tt

package Paws::KinesisAnalyticsV2::AddApplicationInputResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_InputDescription/;
  has ApplicationARN => (is => 'ro', isa => Str);
  has ApplicationVersionId => (is => 'ro', isa => Int);
  has InputDescriptions => (is => 'ro', isa => ArrayRef[KinesisAnalyticsV2_InputDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationARN' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApplicationVersionId' => {
                                           'type' => 'Int'
                                         },
               'InputDescriptions' => {
                                        'class' => 'Paws::KinesisAnalyticsV2::InputDescription',
                                        'type' => 'ArrayRef[KinesisAnalyticsV2_InputDescription]'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationInputResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The Amazon Resource Name (ARN) of the application.


=head2 ApplicationVersionId => Int

Provides the current application version.


=head2 InputDescriptions => ArrayRef[KinesisAnalyticsV2_InputDescription]

Describes the application input configuration.


=head2 _request_id => Str


=cut

1;