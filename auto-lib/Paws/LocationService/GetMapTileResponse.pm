
package Paws::LocationService::GetMapTileResponse;
  use Moose;
  has Blob => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Blob');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetMapTileResponse

=head1 ATTRIBUTES


=head2 Blob => Str

Contains Mapbox Vector Tile (MVT) data.


=head2 ContentType => Str

The map tile's content type. For example,
C<application/vnd.mapbox-vector-tile>.


=head2 _request_id => Str


=cut

