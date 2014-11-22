
package Paws::SimpleWorkflow::GetWorkflowExecutionHistory {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has execution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflowExecutionHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::History');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;