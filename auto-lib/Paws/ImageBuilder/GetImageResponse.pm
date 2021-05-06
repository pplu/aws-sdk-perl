
package Paws::ImageBuilder::GetImageResponse;
  use Moose;
  has Image => (is => 'ro', isa => 'Paws::ImageBuilder::Image', traits => ['NameInRequest'], request_name => 'image');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetImageResponse

=head1 ATTRIBUTES


=head2 Image => L<Paws::ImageBuilder::Image>

The image object.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

