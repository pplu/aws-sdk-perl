
package Paws::EC2::CreateImageResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');

}
1;