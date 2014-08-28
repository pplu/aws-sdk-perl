
package Aws::SimpleWorkflow::RegisterActivityType {
  use Moose;
  has defaultTaskHeartbeatTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has defaultTaskScheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskScheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterActivityType');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;