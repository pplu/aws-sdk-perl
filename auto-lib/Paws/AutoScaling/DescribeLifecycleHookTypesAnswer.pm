
package Paws::AutoScaling::DescribeLifecycleHookTypesAnswer {
  use Moose;
  with 'Paws::API::ResultParser';
  has LifecycleHookTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;