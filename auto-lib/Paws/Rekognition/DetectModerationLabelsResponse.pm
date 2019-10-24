# Generated from json/callresult_class.tt

package Paws::Rekognition::DetectModerationLabelsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Rekognition::Types qw/Rekognition_ModerationLabel/;
  has ModerationLabels => (is => 'ro', isa => ArrayRef[Rekognition_ModerationLabel]);
  has ModerationModelVersion => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ModerationLabels' => {
                                       'class' => 'Paws::Rekognition::ModerationLabel',
                                       'type' => 'ArrayRef[Rekognition_ModerationLabel]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ModerationModelVersion' => {
                                             'type' => 'Str'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectModerationLabelsResponse

=head1 ATTRIBUTES


=head2 ModerationLabels => ArrayRef[Rekognition_ModerationLabel]

Array of detected Moderation labels and the time, in millseconds from
the start of the video, they were detected.


=head2 ModerationModelVersion => Str

Version number of the moderation detection model that was used to
detect unsafe content.


=head2 _request_id => Str


=cut

1;