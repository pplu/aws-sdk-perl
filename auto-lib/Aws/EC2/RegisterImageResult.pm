
package Aws::EC2::RegisterImageResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');

}
1;