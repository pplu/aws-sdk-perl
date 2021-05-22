
package Paws::Rekognition::GetSegmentDetectionResponse;
  use Moose;
  has AudioMetadata => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::AudioMetadata]');
  has JobStatus => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Segments => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::SegmentDetection]');
  has SelectedSegmentTypes => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::SegmentTypeInfo]');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has VideoMetadata => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::VideoMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetSegmentDetectionResponse

=head1 ATTRIBUTES


=head2 AudioMetadata => ArrayRef[L<Paws::Rekognition::AudioMetadata>]

An array of objects. There can be multiple audio streams. Each
C<AudioMetadata> object contains metadata for a single audio stream.
Audio information in an C<AudioMetadata> objects includes the audio
codec, the number of audio channels, the duration of the audio stream,
and the sample rate. Audio metadata is returned in each page of
information returned by C<GetSegmentDetection>.


=head2 JobStatus => Str

Current status of the segment detection job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 NextToken => Str

If the previous response was incomplete (because there are more labels
to retrieve), Amazon Rekognition Video returns a pagination token in
the response. You can use this pagination token to retrieve the next
set of text.


=head2 Segments => ArrayRef[L<Paws::Rekognition::SegmentDetection>]

An array of segments detected in a video. The array is sorted by the
segment types (TECHNICAL_CUE or SHOT) specified in the C<SegmentTypes>
input parameter of C<StartSegmentDetection>. Within each segment type
the array is sorted by timestamp values.


=head2 SelectedSegmentTypes => ArrayRef[L<Paws::Rekognition::SegmentTypeInfo>]

An array containing the segment types requested in the call to
C<StartSegmentDetection>.


=head2 StatusMessage => Str

If the job fails, C<StatusMessage> provides a descriptive error
message.


=head2 VideoMetadata => ArrayRef[L<Paws::Rekognition::VideoMetadata>]

Currently, Amazon Rekognition Video returns a single object in the
C<VideoMetadata> array. The object contains information about the video
stream in the input file that Amazon Rekognition Video chose to
analyze. The C<VideoMetadata> object includes the video codec, video
format and other information. Video metadata is returned in each page
of information returned by C<GetSegmentDetection>.


=head2 _request_id => Str


=cut

1;