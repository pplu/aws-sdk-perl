
use Paws::API;


package Paws::SimpleWorkflow {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'swf');
  has version => (is => 'ro', isa => 'Str', default => '2012-01-25');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'SimpleWorkflowService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.0");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub CountClosedWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::CountClosedWorkflowExecutions', @_);
  }
  sub CountOpenWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::CountOpenWorkflowExecutions', @_);
  }
  sub CountPendingActivityTasks {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::CountPendingActivityTasks', @_);
  }
  sub CountPendingDecisionTasks {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::CountPendingDecisionTasks', @_);
  }
  sub DeprecateActivityType {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::DeprecateActivityType', @_);
  }
  sub DeprecateDomain {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::DeprecateDomain', @_);
  }
  sub DeprecateWorkflowType {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::DeprecateWorkflowType', @_);
  }
  sub DescribeActivityType {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::DescribeActivityType', @_);
  }
  sub DescribeDomain {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::DescribeDomain', @_);
  }
  sub DescribeWorkflowExecution {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::DescribeWorkflowExecution', @_);
  }
  sub DescribeWorkflowType {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::DescribeWorkflowType', @_);
  }
  sub GetWorkflowExecutionHistory {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::GetWorkflowExecutionHistory', @_);
  }
  sub ListActivityTypes {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::ListActivityTypes', @_);
  }
  sub ListClosedWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::ListClosedWorkflowExecutions', @_);
  }
  sub ListDomains {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::ListDomains', @_);
  }
  sub ListOpenWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::ListOpenWorkflowExecutions', @_);
  }
  sub ListWorkflowTypes {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::ListWorkflowTypes', @_);
  }
  sub PollForActivityTask {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::PollForActivityTask', @_);
  }
  sub PollForDecisionTask {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::PollForDecisionTask', @_);
  }
  sub RecordActivityTaskHeartbeat {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::RecordActivityTaskHeartbeat', @_);
  }
  sub RegisterActivityType {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::RegisterActivityType', @_);
  }
  sub RegisterDomain {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::RegisterDomain', @_);
  }
  sub RegisterWorkflowType {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::RegisterWorkflowType', @_);
  }
  sub RequestCancelWorkflowExecution {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::RequestCancelWorkflowExecution', @_);
  }
  sub RespondActivityTaskCanceled {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::RespondActivityTaskCanceled', @_);
  }
  sub RespondActivityTaskCompleted {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::RespondActivityTaskCompleted', @_);
  }
  sub RespondActivityTaskFailed {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::RespondActivityTaskFailed', @_);
  }
  sub RespondDecisionTaskCompleted {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::RespondDecisionTaskCompleted', @_);
  }
  sub SignalWorkflowExecution {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::SignalWorkflowExecution', @_);
  }
  sub StartWorkflowExecution {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::StartWorkflowExecution', @_);
  }
  sub TerminateWorkflowExecution {
    my $self = shift;
    return $self->do_call('Paws::SimpleWorkflow::TerminateWorkflowExecution', @_);
  }
}
1;
