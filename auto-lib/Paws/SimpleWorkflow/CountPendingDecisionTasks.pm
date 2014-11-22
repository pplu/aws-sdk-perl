
package Paws::SimpleWorkflow::CountPendingDecisionTasks {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has taskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CountPendingDecisionTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::PendingTaskCount');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;