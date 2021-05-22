
package Paws::KinesisVideoArchivedMedia::GetClipOutput;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has Payload => (is => 'ro', isa => 'Str');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::GetClipOutput

=head1 ATTRIBUTES


=head2 ContentType => Str

The content type of the media in the requested clip.


=head2 Payload => Str

Traditional MP4 file that contains the media clip from the specified
video stream. The output will contain the first 100 MB or the first 200
fragments from the specified start timestamp. For more information, see
Kinesis Video Streams Limits
(https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html).


=head2 _request_id => Str


=cut

