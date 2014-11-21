
package Aws::AutoScaling::DescribeLifecycleHookTypesAnswer {
  use Moose;
  with 'AWS::API::ResultParser';
  has LifecycleHookTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;