
package Aws::AutoScaling::DetachInstancesAnswer {
  use Moose;
  with 'AWS::API::ResultParser';
  has Activities => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Activity]');

}
1;