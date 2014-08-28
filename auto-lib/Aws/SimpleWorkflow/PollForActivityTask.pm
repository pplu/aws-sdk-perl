
package Aws::SimpleWorkflow::PollForActivityTask {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has identity => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PollForActivityTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SimpleWorkflow::PollForActivityTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
