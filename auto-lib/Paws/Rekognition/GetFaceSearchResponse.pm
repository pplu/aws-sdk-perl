
package Paws::Rekognition::GetFaceSearchResponse;
  use Moose;
  has JobStatus => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Persons => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::PersonMatch]');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has VideoMetadata => (is => 'ro', isa => 'Paws::Rekognition::VideoMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetFaceSearchResponse

=head1 ATTRIBUTES


=head2 JobStatus => Str

The current status of the face search job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of search results.


=head2 Persons => ArrayRef[L<Paws::Rekognition::PersonMatch>]

An array of persons, PersonMatch, in the video whose face(s) match the
face(s) in an Amazon Rekognition collection. It also includes time
information for when persons are matched in the video. You specify the
input collection in an initial call to C<StartFaceSearch>. Each
C<Persons> element includes a time the person was matched, face match
details (C<FaceMatches>) for matching faces in the collection, and
person information (C<Person>) for the matched person.


=head2 StatusMessage => Str

If the job fails, C<StatusMessage> provides a descriptive error
message.


=head2 VideoMetadata => L<Paws::Rekognition::VideoMetadata>

Information about a video that Amazon Rekognition analyzed.
C<Videometadata> is returned in every page of paginated responses from
a Amazon Rekognition Video operation.


=head2 _request_id => Str


=cut

1;