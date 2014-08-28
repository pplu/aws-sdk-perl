
package Aws::AutoScaling::DescribeAutoScalingInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AutoScalingInstances => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::AutoScalingInstanceDetails]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;