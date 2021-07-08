
package Paws::NimbleStudio::DeleteStreamingImageResponse;
  use Moose;
  has StreamingImage => (is => 'ro', isa => 'Paws::NimbleStudio::StreamingImage', traits => ['NameInRequest'], request_name => 'streamingImage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::DeleteStreamingImageResponse

=head1 ATTRIBUTES


=head2 StreamingImage => L<Paws::NimbleStudio::StreamingImage>

The streaming image.


=head2 _request_id => Str


=cut

