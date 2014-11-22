
package Paws::EC2::DescribeInstanceStatusResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has InstanceStatuses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceStatus]', traits => ['Unwrapped'], xmlname => 'instanceStatusSet');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');

}
1;