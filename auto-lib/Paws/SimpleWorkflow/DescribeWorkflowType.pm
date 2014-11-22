
package Paws::SimpleWorkflow::DescribeWorkflowType {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkflowType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::WorkflowTypeDetail');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;