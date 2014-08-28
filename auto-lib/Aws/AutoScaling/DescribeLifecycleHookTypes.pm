
package Aws::AutoScaling::DescribeLifecycleHookTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHookTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeLifecycleHookTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHookTypesResult');
}
1;
