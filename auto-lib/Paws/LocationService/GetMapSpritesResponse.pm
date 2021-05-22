
package Paws::LocationService::GetMapSpritesResponse;
  use Moose;
  has Blob => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Blob');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetMapSpritesResponse

=head1 ATTRIBUTES


=head2 Blob => Str

Contains the body of the sprite sheet or JSON offset le.


=head2 ContentType => Str

The content type of the sprite sheet and offsets. For example, the
sprite sheet content type is C<image/png>, and the sprite offset JSON
document is C<application/json>.


=head2 _request_id => Str


=cut

