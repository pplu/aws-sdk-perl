
use AWS::API;


package Aws::SimpleWorkflow {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'swf');
  has version => (is => 'ro', isa => 'Str', default => '2012-01-25');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'SimpleWorkflowService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.0");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub CountClosedWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::CountClosedWorkflowExecutions', @_);
  }
  sub CountOpenWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::CountOpenWorkflowExecutions', @_);
  }
  sub CountPendingActivityTasks {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::CountPendingActivityTasks', @_);
  }
  sub CountPendingDecisionTasks {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::CountPendingDecisionTasks', @_);
  }
  sub DeprecateActivityType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DeprecateActivityType', @_);
  }
  sub DeprecateDomain {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DeprecateDomain', @_);
  }
  sub DeprecateWorkflowType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DeprecateWorkflowType', @_);
  }
  sub DescribeActivityType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DescribeActivityType', @_);
  }
  sub DescribeDomain {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DescribeDomain', @_);
  }
  sub DescribeWorkflowExecution {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DescribeWorkflowExecution', @_);
  }
  sub DescribeWorkflowType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::DescribeWorkflowType', @_);
  }
  sub GetWorkflowExecutionHistory {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::GetWorkflowExecutionHistory', @_);
  }
  sub ListActivityTypes {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::ListActivityTypes', @_);
  }
  sub ListClosedWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::ListClosedWorkflowExecutions', @_);
  }
  sub ListDomains {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::ListDomains', @_);
  }
  sub ListOpenWorkflowExecutions {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::ListOpenWorkflowExecutions', @_);
  }
  sub ListWorkflowTypes {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::ListWorkflowTypes', @_);
  }
  sub PollForActivityTask {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::PollForActivityTask', @_);
  }
  sub PollForDecisionTask {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::PollForDecisionTask', @_);
  }
  sub RecordActivityTaskHeartbeat {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RecordActivityTaskHeartbeat', @_);
  }
  sub RegisterActivityType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RegisterActivityType', @_);
  }
  sub RegisterDomain {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RegisterDomain', @_);
  }
  sub RegisterWorkflowType {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RegisterWorkflowType', @_);
  }
  sub RequestCancelWorkflowExecution {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RequestCancelWorkflowExecution', @_);
  }
  sub RespondActivityTaskCanceled {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RespondActivityTaskCanceled', @_);
  }
  sub RespondActivityTaskCompleted {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RespondActivityTaskCompleted', @_);
  }
  sub RespondActivityTaskFailed {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RespondActivityTaskFailed', @_);
  }
  sub RespondDecisionTaskCompleted {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::RespondDecisionTaskCompleted', @_);
  }
  sub SignalWorkflowExecution {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::SignalWorkflowExecution', @_);
  }
  sub StartWorkflowExecution {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::StartWorkflowExecution', @_);
  }
  sub TerminateWorkflowExecution {
    my $self = shift;
    return $self->do_call('Aws::SimpleWorkflow::TerminateWorkflowExecution', @_);
  }
}
1;
