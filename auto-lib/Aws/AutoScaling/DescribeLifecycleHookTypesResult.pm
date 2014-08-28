
package Aws::AutoScaling::DescribeLifecycleHookTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LifecycleHookTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;