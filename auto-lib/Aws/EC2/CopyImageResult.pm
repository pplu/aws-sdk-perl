
package Aws::EC2::CopyImageResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');

}
1;