
package Paws::AppStream::DeleteImageResult;
  use Moose;
  has Image => (is => 'ro', isa => 'Paws::AppStream::Image');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DeleteImageResult

=head1 ATTRIBUTES


=head2 Image => L<Paws::AppStream::Image>

Information about the image.


=head2 _request_id => Str


=cut

1;