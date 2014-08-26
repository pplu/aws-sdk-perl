package Aws::EC2::DhcpOptions {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DhcpConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::DhcpConfiguration]', traits => ['Unwrapped'], xmlname => 'dhcpConfigurationSet');
  has DhcpOptionsId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dhcpOptionsId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}
1
