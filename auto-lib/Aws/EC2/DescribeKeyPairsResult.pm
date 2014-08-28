
package Aws::EC2::DescribeKeyPairsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has KeyPairs => (is => 'ro', isa => 'ArrayRef[Aws::EC2::KeyPairInfo]', traits => ['Unwrapped'], xmlname => 'keySet');

}
1;