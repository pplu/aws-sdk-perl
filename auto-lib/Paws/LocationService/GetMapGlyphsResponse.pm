
package Paws::LocationService::GetMapGlyphsResponse;
  use Moose;
  has Blob => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Blob');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetMapGlyphsResponse

=head1 ATTRIBUTES


=head2 Blob => Str

The blob's content type.


=head2 ContentType => Str

The map glyph content type. For example, C<application/octet-stream>.


=head2 _request_id => Str


=cut

