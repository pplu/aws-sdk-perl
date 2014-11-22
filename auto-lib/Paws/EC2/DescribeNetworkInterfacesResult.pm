
package Paws::EC2::DescribeNetworkInterfacesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkInterface]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');

}
1;