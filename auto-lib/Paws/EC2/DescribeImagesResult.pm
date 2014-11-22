
package Paws::EC2::DescribeImagesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Images => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Image]', traits => ['Unwrapped'], xmlname => 'imagesSet');

}
1;