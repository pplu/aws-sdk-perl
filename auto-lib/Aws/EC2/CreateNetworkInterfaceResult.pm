
package Aws::EC2::CreateNetworkInterfaceResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NetworkInterface => (is => 'ro', isa => 'Aws::EC2::NetworkInterface', traits => ['Unwrapped'], xmlname => 'networkInterface');

}
1;