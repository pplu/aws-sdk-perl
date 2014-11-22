
package Paws::AutoScaling::AutoScalingInstancesType {
  use Moose;
  with 'Paws::API::ResultParser';
  has AutoScalingInstances => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::AutoScalingInstanceDetails]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;