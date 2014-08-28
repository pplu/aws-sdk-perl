
use AWS::API;


package Aws::SimpleWorkflow::CountClosedWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Bool');

}
package Aws::SimpleWorkflow::CountOpenWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Bool');

}
package Aws::SimpleWorkflow::CountPendingActivityTasksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Bool');

}
package Aws::SimpleWorkflow::CountPendingDecisionTasksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has count => (is => 'ro', isa => 'Int', required => 1);
  has truncated => (is => 'ro', isa => 'Bool');

}
package Aws::SimpleWorkflow::DescribeActivityTypeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityTypeInfo', required => 1);

}
package Aws::SimpleWorkflow::DescribeDomainResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::DomainConfiguration', required => 1);
  has domainInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::DomainInfo', required => 1);

}
package Aws::SimpleWorkflow::DescribeWorkflowExecutionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has executionConfiguration => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionConfiguration', required => 1);
  has executionInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionInfo', required => 1);
  has latestActivityTaskTimestamp => (is => 'ro', isa => 'Str');
  has latestExecutionContext => (is => 'ro', isa => 'Str');
  has openCounts => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecutionOpenCounts', required => 1);

}
package Aws::SimpleWorkflow::DescribeWorkflowTypeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has configuration => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeConfiguration', required => 1);
  has typeInfo => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowTypeInfo', required => 1);

}
package Aws::SimpleWorkflow::GetWorkflowExecutionHistoryResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::ListActivityTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::ActivityTypeInfo]', required => 1);

}
package Aws::SimpleWorkflow::ListClosedWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has executionInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::WorkflowExecutionInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::ListDomainsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has domainInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::DomainInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::ListOpenWorkflowExecutionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has executionInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::WorkflowExecutionInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}
package Aws::SimpleWorkflow::ListWorkflowTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::WorkflowTypeInfo]', required => 1);

}
package Aws::SimpleWorkflow::PollForActivityTaskResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Aws::SimpleWorkflow::ActivityType', required => 1);
  has input => (is => 'ro', isa => 'Str');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has taskToken => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);

}
package Aws::SimpleWorkflow::PollForDecisionTaskResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has events => (is => 'ro', isa => 'ArrayRef[Aws::SimpleWorkflow::HistoryEvent]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');
  has previousStartedEventId => (is => 'ro', isa => 'Num');
  has startedEventId => (is => 'ro', isa => 'Num', required => 1);
  has taskToken => (is => 'ro', isa => 'Str', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowExecution', required => 1);
  has workflowType => (is => 'ro', isa => 'Aws::SimpleWorkflow::WorkflowType', required => 1);

}
package Aws::SimpleWorkflow::RecordActivityTaskHeartbeatResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has cancelRequested => (is => 'ro', isa => 'Bool', required => 1);

}
package Aws::SimpleWorkflow::StartWorkflowExecutionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has runId => (is => 'ro', isa => 'Str');

}

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
