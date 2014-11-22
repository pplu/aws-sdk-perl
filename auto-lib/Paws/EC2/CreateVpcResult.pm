
package Paws::EC2::CreateVpcResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Vpc => (is => 'ro', isa => 'Paws::EC2::Vpc', traits => ['Unwrapped'], xmlname => 'vpc');

}
1;