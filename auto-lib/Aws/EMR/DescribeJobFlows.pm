
package Aws::EMR::DescribeJobFlows {
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has JobFlowStates => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobFlows');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::DescribeJobFlowsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
