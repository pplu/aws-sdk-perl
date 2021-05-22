
package Paws::MediaLive::DescribeInputDeviceThumbnailResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body');
  has ContentLength => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'Content-Length');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has LastModified => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Last-Modified');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeInputDeviceThumbnailResponse

=head1 ATTRIBUTES


=head2 Body => Str

The binary data for the thumbnail that the Link device has most
recently sent to MediaLive.


=head2 ContentLength => Int

The length of the content.


=head2 ContentType => Str

Specifies the media type of the thumbnail.

Valid values are: C<"image/jpeg">
=head2 ETag => Str

The unique, cacheable version of this thumbnail.


=head2 LastModified => Str

The date and time the thumbnail was last updated at the device.


=head2 _request_id => Str


=cut

