
package Paws::AutoScaling::AutoScalingGroupsType {
  use Moose;
  with 'Paws::API::ResultParser';
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::AutoScalingGroup]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
1;