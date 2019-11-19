# Generated from json/callresult_class.tt

package Paws::Rekognition::GetContentModerationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Rekognition::Types qw/Rekognition_VideoMetadata Rekognition_ContentModerationDetection/;
  has JobStatus => (is => 'ro', isa => Str);
  has ModerationLabels => (is => 'ro', isa => ArrayRef[Rekognition_ContentModerationDetection]);
  has ModerationModelVersion => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has VideoMetadata => (is => 'ro', isa => Rekognition_VideoMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VideoMetadata' => {
                                    'type' => 'Rekognition_VideoMetadata',
                                    'class' => 'Paws::Rekognition::VideoMetadata'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ModerationLabels' => {
                                       'class' => 'Paws::Rekognition::ContentModerationDetection',
                                       'type' => 'ArrayRef[Rekognition_ContentModerationDetection]'
                                     },
               'JobStatus' => {
                                'type' => 'Str'
                              },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'ModerationModelVersion' => {
                                             'type' => 'Str'
                                           },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetContentModerationResponse

=head1 ATTRIBUTES


=head2 JobStatus => Str

The current status of the unsafe content analysis job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 ModerationLabels => ArrayRef[Rekognition_ContentModerationDetection]

The detected unsafe content labels and the time(s) they were detected.


=head2 ModerationModelVersion => Str

Version number of the moderation detection model that was used to
detect unsafe content.


=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of unsafe content labels.


=head2 StatusMessage => Str

If the job fails, C<StatusMessage> provides a descriptive error
message.


=head2 VideoMetadata => Rekognition_VideoMetadata

Information about a video that Amazon Rekognition analyzed.
C<Videometadata> is returned in every page of paginated responses from
C<GetContentModeration>.


=head2 _request_id => Str


=cut

1;