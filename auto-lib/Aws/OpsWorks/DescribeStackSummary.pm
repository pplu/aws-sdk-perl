
package Aws::OpsWorks::DescribeStackSummary {
  use Moose;
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeStackSummaryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;