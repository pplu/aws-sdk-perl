
package Aws::OpsWorks::DescribeStacks {
  use Moose;
  has StackIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeStacksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;