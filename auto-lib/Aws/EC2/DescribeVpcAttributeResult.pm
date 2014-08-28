
package Aws::EC2::DescribeVpcAttributeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has EnableDnsHostnames => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'enableDnsHostnames');
  has EnableDnsSupport => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'enableDnsSupport');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');

}
1;