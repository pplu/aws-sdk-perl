
package Paws::EC2::DescribeVpcAttributeResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has EnableDnsHostnames => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'enableDnsHostnames');
  has EnableDnsSupport => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'enableDnsSupport');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');

}
1;