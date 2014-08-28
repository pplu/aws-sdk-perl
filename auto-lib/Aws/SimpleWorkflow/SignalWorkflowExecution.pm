
package Aws::SimpleWorkflow::SignalWorkflowExecution {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has runId => (is => 'ro', isa => 'Str');
  has signalName => (is => 'ro', isa => 'Str', required => 1);
  has workflowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SignalWorkflowExecution');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
