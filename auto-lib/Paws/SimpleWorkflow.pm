
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

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow - Perl Interface to AWS Amazon Simple Workflow Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon Simple Workflow Service

The Amazon Simple Workflow Service API Reference is intended for
programmers who need detailed information about the Amazon SWF actions
and data types.

For an broader overview of the Amazon SWF programming model, please go
to the Amazon SWF Developer Guide.

This section provides an overview of Amazon SWF actions.

B<Action Categories>

The Amazon SWF actions can be grouped into the following major
categories.

=over

=item *

Actions related to Activities

=item *

Actions related to Deciders

=item *

Actions related to Workflow Executions

=item *

Actions related to Administration

=item *

Actions related to Visibility

=back

B<Actions related to Activities>

The following are actions that are performed by activity workers:

=over

=item *

PollForActivityTask

=item *

RespondActivityTaskCompleted

=item *

RespondActivityTaskFailed

=item *

RespondActivityTaskCanceled

=item *

RecordActivityTaskHeartbeat

=back

Activity workers use the PollForActivityTask to get new activity tasks.
After a worker receives an activity task from Amazon SWF, it performs
the task and responds using RespondActivityTaskCompleted if successful
or RespondActivityTaskFailed if unsuccessful.

B<Actions related to Deciders>

The following are actions that are performed by deciders:

=over

=item *

PollForDecisionTask

=item *

RespondDecisionTaskCompleted

=back

Deciders use PollForDecisionTask to get decision tasks. After a decider
receives a decision task from Amazon SWF, it examines its workflow
execution history and decides what to do next. It calls
RespondDecisionTaskCompletedto complete the decision task and provide
zero or more next decisions.

B<Actions related to Workflow Executions>

The following actions operate on a workflow execution:

=over

=item *

RequestCancelWorkflowExecution

=item *

StartWorkflowExecution

=item *

SignalWorkflowExecution

=item *

TerminateWorkflowExecution

=back

B<Actions related to Administration>

Although you can perform administrative tasks from the Amazon SWF
console, you can use the actions in this section to automate functions
or build your own administrative tools.

B<Activity Management>

=over

=item *

RegisterActivityType

=item *

DeprecateActivityType

=back

B<Workflow Management>

=over

=item *

RegisterWorkflowType

=item *

DeprecateWorkflowType

=back

B<Domain Management>

=over

=item *

RegisterDomain

=item *

DeprecateDomain

=back

B<Workflow Execution Management>

=over

=item *

RequestCancelWorkflowExecution

=item *

TerminateWorkflowExecution

=back

B<Visibility Actions>

Although you can perform visibility actions from the Amazon SWF
console, you can use the actions in this section to build your own
console or administrative tools.

=over

=back

B<Activity Visibility>

=over

=item *

ListActivityTypes

=item *

DescribeActivity

=back

B<Workflow Visibility>

=over

=item *

ListWorkflowTypes

=item *

DescribeWorkflowType

=back

B<Workflow Execution Visibility>

=over

=item *

DescribeWorkflowExecution

=item *

ListOpenWorkflowExecutions

=item *

ListClosedWorkflowExecutions

=item *

CountOpenWorkflowExecutions

=item *

CountClosedWorkflowExecutions

=item *

GetWorkflowExecutionHistory

=back

B<Domain Visibility>

=over

=item *

ListDomains

=item *

DescribeDomain

=back

B<Task List Visibility>

=over

=item *

CountPendingActivityTasks

=item *

CountPendingDecisionTasks

=back










=head1 METHODS

=head2 CountClosedWorkflowExecutions()

  Arguments described in: L<Paws::SimpleWorkflow::CountClosedWorkflowExecutions>

  Returns: L<Paws::SimpleWorkflow::WorkflowExecutionCount>

  

Returns the number of closed workflow executions within the given
domain that meet the specified filtering criteria.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<tagFilter.tag>: String constraint. The key is
C<swf:tagFilter.tag>.

=item * C<typeFilter.name>: String constraint. The key is
C<swf:typeFilter.name>.

=item * C<typeFilter.version>: String constraint. The key is
C<swf:typeFilter.version>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 CountOpenWorkflowExecutions()

  Arguments described in: L<Paws::SimpleWorkflow::CountOpenWorkflowExecutions>

  Returns: L<Paws::SimpleWorkflow::WorkflowExecutionCount>

  

Returns the number of open workflow executions within the given domain
that meet the specified filtering criteria.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<tagFilter.tag>: String constraint. The key is
C<swf:tagFilter.tag>.

=item * C<typeFilter.name>: String constraint. The key is
C<swf:typeFilter.name>.

=item * C<typeFilter.version>: String constraint. The key is
C<swf:typeFilter.version>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 CountPendingActivityTasks()

  Arguments described in: L<Paws::SimpleWorkflow::CountPendingActivityTasks>

  Returns: L<Paws::SimpleWorkflow::PendingTaskCount>

  

Returns the estimated number of activity tasks in the specified task
list. The count returned is an approximation and is not guaranteed to
be exact. If you specify a task list that no activity task was ever
scheduled in then 0 will be returned.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the C<taskList.name> parameter by using a
B<Condition> element with the C<swf:taskList.name> key to allow the
action to access only certain task lists.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 CountPendingDecisionTasks()

  Arguments described in: L<Paws::SimpleWorkflow::CountPendingDecisionTasks>

  Returns: L<Paws::SimpleWorkflow::PendingTaskCount>

  

Returns the estimated number of decision tasks in the specified task
list. The count returned is an approximation and is not guaranteed to
be exact. If you specify a task list that no decision task was ever
scheduled in then 0 will be returned.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the C<taskList.name> parameter by using a
B<Condition> element with the C<swf:taskList.name> key to allow the
action to access only certain task lists.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 DeprecateActivityType()

  Arguments described in: L<Paws::SimpleWorkflow::DeprecateActivityType>

  Returns: nothing

  

Deprecates the specified I<activity type>. After an activity type has
been deprecated, you cannot create new tasks of that activity type.
Tasks of this type that were scheduled before the type was deprecated
will continue to run.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<activityType.name>: String constraint. The key is
C<swf:activityType.name>.

=item * C<activityType.version>: String constraint. The key is
C<swf:activityType.version>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 DeprecateDomain()

  Arguments described in: L<Paws::SimpleWorkflow::DeprecateDomain>

  Returns: nothing

  

Deprecates the specified domain. After a domain has been deprecated it
cannot be used to create new workflow executions or register new types.
However, you can still use visibility actions on this domain.
Deprecating a domain also deprecates all activity and workflow types
registered in the domain. Executions that were started before the
domain was deprecated will continue to run.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 DeprecateWorkflowType()

  Arguments described in: L<Paws::SimpleWorkflow::DeprecateWorkflowType>

  Returns: nothing

  

Deprecates the specified I<workflow type>. After a workflow type has
been deprecated, you cannot create new executions of that type.
Executions that were started before the type was deprecated will
continue to run. A deprecated workflow type may still be used when
calling visibility actions.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<workflowType.name>: String constraint. The key is
C<swf:workflowType.name>.

=item * C<workflowType.version>: String constraint. The key is
C<swf:workflowType.version>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 DescribeActivityType()

  Arguments described in: L<Paws::SimpleWorkflow::DescribeActivityType>

  Returns: L<Paws::SimpleWorkflow::ActivityTypeDetail>

  

Returns information about the specified activity type. This includes
configuration settings provided at registration time as well as other
general information about the type.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<activityType.name>: String constraint. The key is
C<swf:activityType.name>.

=item * C<activityType.version>: String constraint. The key is
C<swf:activityType.version>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 DescribeDomain()

  Arguments described in: L<Paws::SimpleWorkflow::DescribeDomain>

  Returns: L<Paws::SimpleWorkflow::DomainDetail>

  

Returns information about the specified domain including description
and status.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 DescribeWorkflowExecution()

  Arguments described in: L<Paws::SimpleWorkflow::DescribeWorkflowExecution>

  Returns: L<Paws::SimpleWorkflow::WorkflowExecutionDetail>

  

Returns information about the specified workflow execution including
its type and some statistics.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 DescribeWorkflowType()

  Arguments described in: L<Paws::SimpleWorkflow::DescribeWorkflowType>

  Returns: L<Paws::SimpleWorkflow::WorkflowTypeDetail>

  

Returns information about the specified I<workflow type>. This includes
configuration settings specified when the type was registered and other
information such as creation date, current status, etc.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<workflowType.name>: String constraint. The key is
C<swf:workflowType.name>.

=item * C<workflowType.version>: String constraint. The key is
C<swf:workflowType.version>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 GetWorkflowExecutionHistory()

  Arguments described in: L<Paws::SimpleWorkflow::GetWorkflowExecutionHistory>

  Returns: L<Paws::SimpleWorkflow::History>

  

Returns the history of the specified workflow execution. The results
may be split into multiple pages. To retrieve subsequent pages, make
the call again using the C<nextPageToken> returned by the initial call.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 ListActivityTypes()

  Arguments described in: L<Paws::SimpleWorkflow::ListActivityTypes>

  Returns: L<Paws::SimpleWorkflow::ActivityTypeInfos>

  

Returns information about all activities registered in the specified
domain that match the specified name and registration status. The
result includes information like creation date, current status of the
activity, etc. The results may be split into multiple pages. To
retrieve subsequent pages, make the call again using the
C<nextPageToken> returned by the initial call.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 ListClosedWorkflowExecutions()

  Arguments described in: L<Paws::SimpleWorkflow::ListClosedWorkflowExecutions>

  Returns: L<Paws::SimpleWorkflow::WorkflowExecutionInfos>

  

Returns a list of closed workflow executions in the specified domain
that meet the filtering criteria. The results may be split into
multiple pages. To retrieve subsequent pages, make the call again using
the nextPageToken returned by the initial call.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<tagFilter.tag>: String constraint. The key is
C<swf:tagFilter.tag>.

=item * C<typeFilter.name>: String constraint. The key is
C<swf:typeFilter.name>.

=item * C<typeFilter.version>: String constraint. The key is
C<swf:typeFilter.version>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 ListDomains()

  Arguments described in: L<Paws::SimpleWorkflow::ListDomains>

  Returns: L<Paws::SimpleWorkflow::DomainInfos>

  

Returns the list of domains registered in the account. The results may
be split into multiple pages. To retrieve subsequent pages, make the
call again using the nextPageToken returned by the initial call.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains. The element must be set to
C<arn:aws:swf::AccountID:domain/*">, where "AccountID" is the account
ID, with no dashes.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 ListOpenWorkflowExecutions()

  Arguments described in: L<Paws::SimpleWorkflow::ListOpenWorkflowExecutions>

  Returns: L<Paws::SimpleWorkflow::WorkflowExecutionInfos>

  

Returns a list of open workflow executions in the specified domain that
meet the filtering criteria. The results may be split into multiple
pages. To retrieve subsequent pages, make the call again using the
nextPageToken returned by the initial call.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<tagFilter.tag>: String constraint. The key is
C<swf:tagFilter.tag>.

=item * C<typeFilter.name>: String constraint. The key is
C<swf:typeFilter.name>.

=item * C<typeFilter.version>: String constraint. The key is
C<swf:typeFilter.version>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 ListWorkflowTypes()

  Arguments described in: L<Paws::SimpleWorkflow::ListWorkflowTypes>

  Returns: L<Paws::SimpleWorkflow::WorkflowTypeInfos>

  

Returns information about workflow types in the specified domain. The
results may be split into multiple pages that can be retrieved by
making the call repeatedly.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 PollForActivityTask()

  Arguments described in: L<Paws::SimpleWorkflow::PollForActivityTask>

  Returns: L<Paws::SimpleWorkflow::ActivityTask>

  

Used by workers to get an ActivityTask from the specified activity
C<taskList>. This initiates a long poll, where the service holds the
HTTP connection open and responds as soon as a task becomes available.
The maximum time the service holds on to the request before responding
is 60 seconds. If no task is available within 60 seconds, the poll will
return an empty result. An empty result, in this context, means that an
ActivityTask is returned, but that the value of taskToken is an empty
string. If a task is returned, the worker should use its type to
identify and process it correctly.

Workers should set their client side socket timeout to at least 70
seconds (10 seconds higher than the maximum time service may hold the
poll request).

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the C<taskList.name> parameter by using a
B<Condition> element with the C<swf:taskList.name> key to allow the
action to access only certain task lists.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 PollForDecisionTask()

  Arguments described in: L<Paws::SimpleWorkflow::PollForDecisionTask>

  Returns: L<Paws::SimpleWorkflow::DecisionTask>

  

Used by deciders to get a DecisionTask from the specified decision
C<taskList>. A decision task may be returned for any open workflow
execution that is using the specified task list. The task includes a
paginated view of the history of the workflow execution. The decider
should use the workflow type and the history to determine how to
properly handle the task.

This action initiates a long poll, where the service holds the HTTP
connection open and responds as soon a task becomes available. If no
decision task is available in the specified task list before the
timeout of 60 seconds expires, an empty result is returned. An empty
result, in this context, means that a DecisionTask is returned, but
that the value of taskToken is an empty string.

Deciders should set their client side socket timeout to at least 70
seconds (10 seconds higher than the timeout). Because the number of
workflow history events for a single workflow execution might be very
large, the result returned might be split up across a number of pages.
To retrieve subsequent pages, make additional calls to
C<PollForDecisionTask> using the C<nextPageToken> returned by the
initial call. Note that you do B<not> call
C<GetWorkflowExecutionHistory> with this C<nextPageToken>. Instead,
call C<PollForDecisionTask> again.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the C<taskList.name> parameter by using a
B<Condition> element with the C<swf:taskList.name> key to allow the
action to access only certain task lists.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 RecordActivityTaskHeartbeat()

  Arguments described in: L<Paws::SimpleWorkflow::RecordActivityTaskHeartbeat>

  Returns: L<Paws::SimpleWorkflow::ActivityTaskStatus>

  

Used by activity workers to report to the service that the ActivityTask
represented by the specified C<taskToken> is still making progress. The
worker can also (optionally) specify details of the progress, for
example percent complete, using the C<details> parameter. This action
can also be used by the worker as a mechanism to check if cancellation
is being requested for the activity task. If a cancellation is being
attempted for the specified task, then the boolean C<cancelRequested>
flag returned by the service is set to C<true>.

This action resets the C<taskHeartbeatTimeout> clock. The
C<taskHeartbeatTimeout> is specified in RegisterActivityType.

This action does not in itself create an event in the workflow
execution history. However, if the task times out, the workflow
execution history will contain a C<ActivityTaskTimedOut> event that
contains the information from the last heartbeat generated by the
activity worker.

If the C<cancelRequested> flag returns C<true>, a cancellation is being
attempted. If the worker can cancel the activity, it should respond
with RespondActivityTaskCanceled. Otherwise, it should ignore the
cancellation request.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 RegisterActivityType()

  Arguments described in: L<Paws::SimpleWorkflow::RegisterActivityType>

  Returns: nothing

  

Registers a new I<activity type> along with its configuration settings
in the specified domain.

A C<TypeAlreadyExists> fault is returned if the type already exists in
the domain. You cannot change any configuration settings of the type
after its registration, and it must be registered as a new version.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<defaultTaskList.name>: String constraint. The key is
C<swf:defaultTaskList.name>.

=item * C<name>: String constraint. The key is C<swf:name>.

=item * C<version>: String constraint. The key is C<swf:version>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 RegisterDomain()

  Arguments described in: L<Paws::SimpleWorkflow::RegisterDomain>

  Returns: nothing

  

Registers a new domain.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * You cannot use an IAM policy to control domain access for this
action. The name of the domain being registered is available as the
resource of this action.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 RegisterWorkflowType()

  Arguments described in: L<Paws::SimpleWorkflow::RegisterWorkflowType>

  Returns: nothing

  

Registers a new I<workflow type> and its configuration settings in the
specified domain.

The retention period for the workflow history is set by the
RegisterDomain action.

If the type already exists, then a C<TypeAlreadyExists> fault is
returned. You cannot change the configuration settings of a workflow
type once it is registered and it must be registered as a new version.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<defaultTaskList.name>: String constraint. The key is
C<swf:defaultTaskList.name>.

=item * C<name>: String constraint. The key is C<swf:name>.

=item * C<version>: String constraint. The key is C<swf:version>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 RequestCancelWorkflowExecution()

  Arguments described in: L<Paws::SimpleWorkflow::RequestCancelWorkflowExecution>

  Returns: nothing

  

Records a C<WorkflowExecutionCancelRequested> event in the currently
running workflow execution identified by the given domain, workflowId,
and runId. This logically requests the cancellation of the workflow
execution as a whole. It is up to the decider to take appropriate
actions when it receives an execution history with this event.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 RespondActivityTaskCanceled()

  Arguments described in: L<Paws::SimpleWorkflow::RespondActivityTaskCanceled>

  Returns: nothing

  

Used by workers to tell the service that the ActivityTask identified by
the C<taskToken> was successfully canceled. Additional C<details> can
be optionally provided using the C<details> argument.

These C<details> (if provided) appear in the C<ActivityTaskCanceled>
event added to the workflow history.

Only use this operation if the C<canceled> flag of a
RecordActivityTaskHeartbeat request returns C<true> and if the activity
can be safely undone or abandoned.

A task is considered open from the time that it is scheduled until it
is closed. Therefore a task is reported as open while a worker is
processing it. A task is closed after it has been specified in a call
to RespondActivityTaskCompleted, RespondActivityTaskCanceled,
RespondActivityTaskFailed, or the task has timed out.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 RespondActivityTaskCompleted()

  Arguments described in: L<Paws::SimpleWorkflow::RespondActivityTaskCompleted>

  Returns: nothing

  

Used by workers to tell the service that the ActivityTask identified by
the C<taskToken> completed successfully with a C<result> (if provided).
The C<result> appears in the C<ActivityTaskCompleted> event in the
workflow history.

If the requested task does not complete successfully, use
RespondActivityTaskFailed instead. If the worker finds that the task is
canceled through the C<canceled> flag returned by
RecordActivityTaskHeartbeat, it should cancel the task, clean up and
then call RespondActivityTaskCanceled.

A task is considered open from the time that it is scheduled until it
is closed. Therefore a task is reported as open while a worker is
processing it. A task is closed after it has been specified in a call
to RespondActivityTaskCompleted, RespondActivityTaskCanceled,
RespondActivityTaskFailed, or the task has timed out.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 RespondActivityTaskFailed()

  Arguments described in: L<Paws::SimpleWorkflow::RespondActivityTaskFailed>

  Returns: nothing

  

Used by workers to tell the service that the ActivityTask identified by
the C<taskToken> has failed with C<reason> (if specified). The
C<reason> and C<details> appear in the C<ActivityTaskFailed> event
added to the workflow history.

A task is considered open from the time that it is scheduled until it
is closed. Therefore a task is reported as open while a worker is
processing it. A task is closed after it has been specified in a call
to RespondActivityTaskCompleted, RespondActivityTaskCanceled,
RespondActivityTaskFailed, or the task has timed out.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 RespondDecisionTaskCompleted()

  Arguments described in: L<Paws::SimpleWorkflow::RespondDecisionTaskCompleted>

  Returns: nothing

  

Used by deciders to tell the service that the DecisionTask identified
by the C<taskToken> has successfully completed. The C<decisions>
argument specifies the list of decisions made while processing the
task.

A C<DecisionTaskCompleted> event is added to the workflow history. The
C<executionContext> specified is attached to the event in the workflow
execution history.

B<Access Control>

If an IAM policy grants permission to use
C<RespondDecisionTaskCompleted>, it can express permissions for the
list of decisions in the C<decisions> parameter. Each of the decisions
has one or more parameters, much like a regular API call. To allow for
policies to be as readable as possible, you can express permissions on
decisions as if they were actual API calls, including applying
conditions to some parameters. For more information, see Using IAM to
Manage Access to Amazon SWF Workflows.











=head2 SignalWorkflowExecution()

  Arguments described in: L<Paws::SimpleWorkflow::SignalWorkflowExecution>

  Returns: nothing

  

Records a C<WorkflowExecutionSignaled> event in the workflow execution
history and creates a decision task for the workflow execution
identified by the given domain, workflowId and runId. The event is
recorded with the specified user defined signalName and input (if
provided).

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 StartWorkflowExecution()

  Arguments described in: L<Paws::SimpleWorkflow::StartWorkflowExecution>

  Returns: L<Paws::SimpleWorkflow::Run>

  

Starts an execution of the workflow type in the specified domain using
the provided C<workflowId> and input data.

This action returns the newly started workflow execution.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * Constrain the following parameters by using a C<Condition>
element with the appropriate keys.

=over

=item * C<tagList.member.0>: The key is C<swf:tagList.member.0>.

=item * C<tagList.member.1>: The key is C<swf:tagList.member.1>.

=item * C<tagList.member.2>: The key is C<swf:tagList.member.2>.

=item * C<tagList.member.3>: The key is C<swf:tagList.member.3>.

=item * C<tagList.member.4>: The key is C<swf:tagList.member.4>.

=item * C<taskList>: String constraint. The key is
C<swf:taskList.name>.

=item * C<name>: String constraint. The key is
C<swf:workflowType.name>.

=item * C<version>: String constraint. The key is
C<swf:workflowType.version>.

=back

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head2 TerminateWorkflowExecution()

  Arguments described in: L<Paws::SimpleWorkflow::TerminateWorkflowExecution>

  Returns: nothing

  

Records a C<WorkflowExecutionTerminated> event and forces closure of
the workflow execution identified by the given domain, runId, and
workflowId. The child policy, registered with the workflow type or
specified when starting this execution, is applied to any open child
workflow executions of this workflow execution.

If the identified workflow execution was in progress, it is terminated
immediately.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails by throwing C<OperationNotPermitted>. For details and
example IAM policies, see Using IAM to Manage Access to Amazon SWF
Workflows.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

