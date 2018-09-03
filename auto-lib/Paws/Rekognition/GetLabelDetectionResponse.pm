
package Paws::Rekognition::GetLabelDetectionResponse;
  use Moose;
  has BillableDurationSeconds => (is => 'ro', isa => 'Int');
  has ErrorCode => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has Labels => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::LabelDetection]');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has VideoMetadata => (is => 'ro', isa => 'Paws::Rekognition::VideoMetadata');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::Warning]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetLabelDetectionResponse

=head1 ATTRIBUTES


=head2 BillableDurationSeconds => Int




=head2 ErrorCode => Str




=head2 JobStatus => Str

The current status of the label detection job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 Labels => ArrayRef[L<Paws::Rekognition::LabelDetection>]

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


=head2 VideoMetadata => L<Paws::Rekognition::VideoMetadata>

Information about a video that Amazon Rekognition Video analyzed.
C<Videometadata> is returned in every page of paginated responses from
a Amazon Rekognition video operation.


=head2 Warnings => ArrayRef[L<Paws::Rekognition::Warning>]




=head2 _request_id => Str


=cut

1;