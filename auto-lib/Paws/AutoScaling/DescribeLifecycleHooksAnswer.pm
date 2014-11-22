
package Paws::AutoScaling::DescribeLifecycleHooksAnswer {
  use Moose;
  with 'Paws::API::ResultParser';
  has LifecycleHooks => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::LifecycleHook]');

}
1;