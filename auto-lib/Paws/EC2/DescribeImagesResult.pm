
package Paws::EC2::DescribeImagesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Images => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Image]', traits => ['Unwrapped'], xmlname => 'imagesSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImagesResult

=head1 ATTRIBUTES

=head2 Images => ArrayRef[Paws::EC2::Image]

  

Information about one or more images.











=cut

