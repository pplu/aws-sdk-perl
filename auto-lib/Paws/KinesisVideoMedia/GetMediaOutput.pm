
package Paws::KinesisVideoMedia::GetMediaOutput;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has Payload => (is => 'ro', isa => 'Str');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoMedia::GetMediaOutput

=head1 ATTRIBUTES


=head2 ContentType => Str

The content type of the requested media.


=head2 Payload => Str

The payload Kinesis Video Streams returns is a sequence of chunks from
the specified stream. For information about the chunks, see . The
chunks that Kinesis Video Streams returns in the C<GetMedia> call also
include the following additional Matroska (MKV) tags:

=over

=item *

AWS_KINESISVIDEO_CONTINUATION_TOKEN (UTF-8 string) - In the event your
C<GetMedia> call terminates, you can use this continuation token in
your next request to get the next chunk where the last request
terminated.

=item *

AWS_KINESISVIDEO_MILLIS_BEHIND_NOW (UTF-8 string) - Client applications
can use this tag value to determine how far behind the chunk returned
in the response is from the latest chunk on the stream.

=item *

AWS_KINESISVIDEO_FRAGMENT_NUMBER - Fragment number returned in the
chunk.

=item *

AWS_KINESISVIDEO_SERVER_TIMESTAMP - Server time stamp of the fragment.

=item *

AWS_KINESISVIDEO_PRODUCER_TIMESTAMP - Producer time stamp of the
fragment.

=back

The following tags will be present if an error occurs:

=over

=item *

AWS_KINESISVIDEO_ERROR_CODE - String description of an error that
caused GetMedia to stop.

=item *

AWS_KINESISVIDEO_ERROR_ID: Integer code of the error.

=back

The error codes are as follows:

=over

=item *

3002 - Error writing to the stream

=item *

4000 - Requested fragment is not found

=item *

4500 - Access denied for the stream's KMS key

=item *

4501 - Stream's KMS key is disabled

=item *

4502 - Validation error on the Stream's KMS key

=item *

4503 - KMS key specified in the stream is unavailable

=item *

4504 - Invalid usage of the KMS key specified in the stream

=item *

4505 - Invalid state of the KMS key specified in the stream

=item *

4506 - Unable to find the KMS key specified in the stream

=item *

5000 - Internal error

=back



=head2 _request_id => Str


=cut

