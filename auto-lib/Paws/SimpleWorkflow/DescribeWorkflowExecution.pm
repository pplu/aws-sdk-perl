
package Paws::SimpleWorkflow::DescribeWorkflowExecution {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has execution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::WorkflowExecutionDetail');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;