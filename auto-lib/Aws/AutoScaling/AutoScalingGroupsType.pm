
package Aws::AutoScaling::AutoScalingGroupsType {
  use Moose;
  with 'AWS::API::ResultParser';
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::AutoScalingGroup]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
1;