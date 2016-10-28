
package Paws::ECR::BatchGetImageResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECR::ImageFailure]', traits => ['Unwrapped'], xmlname => 'failures' );
  has Images => (is => 'ro', isa => 'ArrayRef[Paws::ECR::Image]', traits => ['Unwrapped'], xmlname => 'images' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::BatchGetImageResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECR::ImageFailure>]

Any failures associated with the call.



=head2 Images => ArrayRef[L<Paws::ECR::Image>]

A list of image objects corresponding to the image references in the
request.




=cut

1;