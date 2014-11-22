
package Paws::EC2::CreateNetworkInterfaceResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NetworkInterface => (is => 'ro', isa => 'Paws::EC2::NetworkInterface', traits => ['Unwrapped'], xmlname => 'networkInterface');

}
1;