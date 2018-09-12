
package Paws::Rekognition::GetContentModerationResponse;
  use Moose;
  has JobStatus => (is => 'ro', isa => 'Str');
  has ModerationLabels => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ContentModerationDetection]');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has VideoMetadata => (is => 'ro', isa => 'Paws::Rekognition::VideoMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetContentModerationResponse

=head1 ATTRIBUTES


=head2 JobStatus => Str

The current status of the content moderation job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 ModerationLabels => ArrayRef[L<Paws::Rekognition::ContentModerationDetection>]

The detected moderation labels and the time(s) they were detected.


=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of moderation labels.


=head2 StatusMessage => Str

If the job fails, C<StatusMessage> provides a descriptive error
message.


=head2 VideoMetadata => L<Paws::Rekognition::VideoMetadata>

Information about a video that Amazon Rekognition analyzed.
C<Videometadata> is returned in every page of paginated responses from
C<GetContentModeration>.


=head2 _request_id => Str


=cut

1;