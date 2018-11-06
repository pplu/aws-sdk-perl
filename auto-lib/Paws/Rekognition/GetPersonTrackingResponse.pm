
package Paws::Rekognition::GetPersonTrackingResponse;
  use Moose;
  has JobStatus => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Persons => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::PersonDetection]');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has VideoMetadata => (is => 'ro', isa => 'Paws::Rekognition::VideoMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetPersonTrackingResponse

=head1 ATTRIBUTES


=head2 JobStatus => Str

The current status of the person tracking job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of persons.


=head2 Persons => ArrayRef[L<Paws::Rekognition::PersonDetection>]

An array of the persons detected in the video and the time(s) their
path was tracked throughout the video. An array element will exist for
each time a person's path is tracked.


=head2 StatusMessage => Str

If the job fails, C<StatusMessage> provides a descriptive error
message.


=head2 VideoMetadata => L<Paws::Rekognition::VideoMetadata>

Information about a video that Amazon Rekognition Video analyzed.
C<Videometadata> is returned in every page of paginated responses from
a Amazon Rekognition Video operation.


=head2 _request_id => Str


=cut

1;