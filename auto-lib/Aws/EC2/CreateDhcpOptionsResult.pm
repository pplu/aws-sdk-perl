
package Aws::EC2::CreateDhcpOptionsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has DhcpOptions => (is => 'ro', isa => 'Aws::EC2::DhcpOptions', traits => ['Unwrapped'], xmlname => 'dhcpOptions');

}
1;