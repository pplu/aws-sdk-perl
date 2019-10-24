# Generated from json/callresult_class.tt

package Paws::Rekognition::GetFaceDetectionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Rekognition::Types qw/Rekognition_FaceDetection Rekognition_VideoMetadata/;
  has Faces => (is => 'ro', isa => ArrayRef[Rekognition_FaceDetection]);
  has JobStatus => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has VideoMetadata => (is => 'ro', isa => Rekognition_VideoMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Faces' => {
                            'class' => 'Paws::Rekognition::FaceDetection',
                            'type' => 'ArrayRef[Rekognition_FaceDetection]'
                          },
               'VideoMetadata' => {
                                    'class' => 'Paws::Rekognition::VideoMetadata',
                                    'type' => 'Rekognition_VideoMetadata'
                                  },
               'JobStatus' => {
                                'type' => 'Str'
                              },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetFaceDetectionResponse

=head1 ATTRIBUTES


=head2 Faces => ArrayRef[Rekognition_FaceDetection]

An array of faces detected in the video. Each element contains a
detected face's details and the time, in milliseconds from the start of
the video, the face was detected.


=head2 JobStatus => Str

The current status of the face detection job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 NextToken => Str

If the response is truncated, Amazon Rekognition returns this token
that you can use in the subsequent request to retrieve the next set of
faces.


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