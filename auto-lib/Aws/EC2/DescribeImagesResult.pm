
package Aws::EC2::DescribeImagesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Images => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Image]', traits => ['Unwrapped'], xmlname => 'imagesSet');

}
1;