
package Paws::EC2::DescribeKeyPairsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has KeyPairs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::KeyPairInfo]', traits => ['Unwrapped'], xmlname => 'keySet');

}
1;