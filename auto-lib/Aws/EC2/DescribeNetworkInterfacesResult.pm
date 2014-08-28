
package Aws::EC2::DescribeNetworkInterfacesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::NetworkInterface]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');

}
1;