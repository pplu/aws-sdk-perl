
package Aws::AutoScaling::DetachInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Activities => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Activity]');

}
1;