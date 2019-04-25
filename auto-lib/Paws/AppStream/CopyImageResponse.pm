
package Paws::AppStream::CopyImageResponse;
  use Moose;
  has DestinationImageName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CopyImageResponse

=head1 ATTRIBUTES


=head2 DestinationImageName => Str

The name of the destination image.


=head2 _request_id => Str


=cut

1;