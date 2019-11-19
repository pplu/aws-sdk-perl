# Generated from json/callresult_class.tt

package Paws::Rekognition::GetLabelDetectionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Rekognition::Types qw/Rekognition_LabelDetection Rekognition_VideoMetadata/;
  has JobStatus => (is => 'ro', isa => Str);
  has LabelModelVersion => (is => 'ro', isa => Str);
  has Labels => (is => 'ro', isa => ArrayRef[Rekognition_LabelDetection]);
  has NextToken => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has VideoMetadata => (is => 'ro', isa => Rekognition_VideoMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Labels' => {
                             'type' => 'ArrayRef[Rekognition_LabelDetection]',
                             'class' => 'Paws::Rekognition::LabelDetection'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VideoMetadata' => {
                                    'type' => 'Rekognition_VideoMetadata',
                                    'class' => 'Paws::Rekognition::VideoMetadata'
                                  },
               'LabelModelVersion' => {
                                        'type' => 'Str'
                                      },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'JobStatus' => {
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

Paws::Rekognition::GetLabelDetectionResponse

=head1 ATTRIBUTES


=head2 JobStatus => Str

The current status of the label detection job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 LabelModelVersion => Str

Version number of the label detection model that was used to detect
labels.


=head2 Labels => ArrayRef[Rekognition_LabelDetection]

An array of labels detected in the video. Each element contains the
detected label and the time, in milliseconds from the start of the
video, that the label was detected.


=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of labels.


=head2 StatusMessage => Str

If the job fails, C<StatusMessage> provides a descriptive error
message.


=head2 VideoMetadata => Rekognition_VideoMetadata

Information about a video that Amazon Rekognition Video analyzed.
C<Videometadata> is returned in every page of paginated responses from
a Amazon Rekognition video operation.


=head2 _request_id => Str


=cut

1;