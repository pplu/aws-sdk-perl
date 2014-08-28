
package Aws::EC2::DescribeInstanceStatusResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InstanceStatuses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStatus]', traits => ['Unwrapped'], xmlname => 'instanceStatusSet');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');

}
1;