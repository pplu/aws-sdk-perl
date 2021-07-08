
package Paws::SageMaker::ListImagesResponse;
  use Moose;
  has Images => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Image]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListImagesResponse

=head1 ATTRIBUTES


=head2 Images => ArrayRef[L<Paws::SageMaker::Image>]

A list of images and their properties.


=head2 NextToken => Str

A token for getting the next set of images, if there are any.


=head2 _request_id => Str


=cut

1;