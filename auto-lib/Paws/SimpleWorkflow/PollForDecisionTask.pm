
package Paws::SimpleWorkflow::PollForDecisionTask {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has identity => (is => 'ro', isa => 'Str');
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Bool');
  has taskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PollForDecisionTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::DecisionTask');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;