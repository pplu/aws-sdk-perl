
package Aws::AutoScaling::DescribeLifecycleHooksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LifecycleHooks => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::LifecycleHook]');

}
1;