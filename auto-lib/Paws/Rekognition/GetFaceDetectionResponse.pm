
package Paws::Rekognition::GetFaceDetectionResponse;
  use Moose;
  has Faces => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::FaceDetection]');
  has JobStatus => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has VideoMetadata => (is => 'ro', isa => 'Paws::Rekognition::VideoMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetFaceDetectionResponse

=head1 ATTRIBUTES


=head2 Faces => ArrayRef[L<Paws::Rekognition::FaceDetection>]

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


=head2 VideoMetadata => L<Paws::Rekognition::VideoMetadata>

Information about a video that Amazon Rekognition Video analyzed.
C<Videometadata> is returned in every page of paginated responses from
a Amazon Rekognition video operation.


=head2 _request_id => Str


=cut

1;