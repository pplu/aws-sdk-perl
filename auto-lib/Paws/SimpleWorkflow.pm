package Paws::SimpleWorkflow;
  use Moose;
  sub service { 'swf' }
  sub signing_name { 'swf' }
  sub version { '2012-01-25' }
  sub target_prefix { 'SimpleWorkflowService' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CountClosedWorkflowExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::CountClosedWorkflowExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CountOpenWorkflowExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::CountOpenWorkflowExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CountPendingActivityTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::CountPendingActivityTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CountPendingDecisionTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::CountPendingDecisionTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprecateActivityType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::DeprecateActivityType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprecateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::DeprecateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprecateWorkflowType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::DeprecateWorkflowType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeActivityType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::DescribeActivityType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::DescribeDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkflowExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::DescribeWorkflowExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkflowType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::DescribeWorkflowType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowExecutionHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::GetWorkflowExecutionHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListActivityTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::ListActivityTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClosedWorkflowExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::ListClosedWorkflowExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOpenWorkflowExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::ListOpenWorkflowExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflowTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::ListWorkflowTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PollForActivityTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::PollForActivityTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PollForDecisionTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::PollForDecisionTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RecordActivityTaskHeartbeat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::RecordActivityTaskHeartbeat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterActivityType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::RegisterActivityType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::RegisterDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterWorkflowType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::RegisterWorkflowType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestCancelWorkflowExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::RequestCancelWorkflowExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RespondActivityTaskCanceled {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::RespondActivityTaskCanceled', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RespondActivityTaskCompleted {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::RespondActivityTaskCompleted', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RespondActivityTaskFailed {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::RespondActivityTaskFailed', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RespondDecisionTaskCompleted {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::RespondDecisionTaskCompleted', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SignalWorkflowExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::SignalWorkflowExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartWorkflowExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::StartWorkflowExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateWorkflowExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimpleWorkflow::TerminateWorkflowExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllWorkflowExecutionHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetWorkflowExecutionHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->GetWorkflowExecutionHistory(@_, nextPageToken => $next_result->nextPageToken);
        push @{ $result->events }, @{ $next_result->events };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'events') foreach (@{ $result->events });
        $result = $self->GetWorkflowExecutionHistory(@_, nextPageToken => $result->nextPageToken);
      }
      $callback->($_ => 'events') foreach (@{ $result->events });
    }

    return undef
  }
  sub ListAllActivityTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListActivityTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->ListActivityTypes(@_, nextPageToken => $next_result->nextPageToken);
        push @{ $result->typeInfos }, @{ $next_result->typeInfos };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'typeInfos') foreach (@{ $result->typeInfos });
        $result = $self->ListActivityTypes(@_, nextPageToken => $result->nextPageToken);
      }
      $callback->($_ => 'typeInfos') foreach (@{ $result->typeInfos });
    }

    return undef
  }
  sub ListAllClosedWorkflowExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClosedWorkflowExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->ListClosedWorkflowExecutions(@_, nextPageToken => $next_result->nextPageToken);
        push @{ $result->executionInfos }, @{ $next_result->executionInfos };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'executionInfos') foreach (@{ $result->executionInfos });
        $result = $self->ListClosedWorkflowExecutions(@_, nextPageToken => $result->nextPageToken);
      }
      $callback->($_ => 'executionInfos') foreach (@{ $result->executionInfos });
    }

    return undef
  }
  sub ListAllDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->ListDomains(@_, nextPageToken => $next_result->nextPageToken);
        push @{ $result->domainInfos }, @{ $next_result->domainInfos };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'domainInfos') foreach (@{ $result->domainInfos });
        $result = $self->ListDomains(@_, nextPageToken => $result->nextPageToken);
      }
      $callback->($_ => 'domainInfos') foreach (@{ $result->domainInfos });
    }

    return undef
  }
  sub ListAllOpenWorkflowExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOpenWorkflowExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->ListOpenWorkflowExecutions(@_, nextPageToken => $next_result->nextPageToken);
        push @{ $result->executionInfos }, @{ $next_result->executionInfos };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'executionInfos') foreach (@{ $result->executionInfos });
        $result = $self->ListOpenWorkflowExecutions(@_, nextPageToken => $result->nextPageToken);
      }
      $callback->($_ => 'executionInfos') foreach (@{ $result->executionInfos });
    }

    return undef
  }
  sub ListAllWorkflowTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkflowTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->ListWorkflowTypes(@_, nextPageToken => $next_result->nextPageToken);
        push @{ $result->typeInfos }, @{ $next_result->typeInfos };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'typeInfos') foreach (@{ $result->typeInfos });
        $result = $self->ListWorkflowTypes(@_, nextPageToken => $result->nextPageToken);
      }
      $callback->($_ => 'typeInfos') foreach (@{ $result->typeInfos });
    }

    return undef
  }
  sub PollForAllDecisionTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->PollForDecisionTask(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextPageToken) {
        $next_result = $self->PollForDecisionTask(@_, nextPageToken => $next_result->nextPageToken);
        push @{ $result->events }, @{ $next_result->events };
      }
      return $result;
    } else {
      while ($result->nextPageToken) {
        $callback->($_ => 'events') foreach (@{ $result->events });
        $result = $self->PollForDecisionTask(@_, nextPageToken => $result->nextPageToken);
      }
      $callback->($_ => 'events') foreach (@{ $result->events });
    }

    return undef
  }


  sub operations { qw/CountClosedWorkflowExecutions CountOpenWorkflowExecutions CountPendingActivityTasks CountPendingDecisionTasks DeprecateActivityType DeprecateDomain DeprecateWorkflowType DescribeActivityType DescribeDomain DescribeWorkflowExecution DescribeWorkflowType GetWorkflowExecutionHistory ListActivityTypes ListClosedWorkflowExecutions ListDomains ListOpenWorkflowExecutions ListWorkflowTypes PollForActivityTask PollForDecisionTask RecordActivityTaskHeartbeat RegisterActivityType RegisterDomain RegisterWorkflowType RequestCancelWorkflowExecution RespondActivityTaskCanceled RespondActivityTaskCompleted RespondActivityTaskFailed RespondDecisionTaskCompleted SignalWorkflowExecution StartWorkflowExecution TerminateWorkflowExecution / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow - Perl Interface to AWS Amazon Simple Workflow Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SimpleWorkflow');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Simple Workflow Service

The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build
applications that use Amazon's cloud to coordinate work across
distributed components. In Amazon SWF, a I<task> represents a logical
unit of work that is performed by a component of your workflow.
Coordinating tasks in a workflow involves managing intertask
dependencies, scheduling, and concurrency in accordance with the
logical flow of the application.

Amazon SWF gives you full control over implementing tasks and
coordinating them without worrying about underlying complexities such
as tracking their progress and maintaining their state.

This documentation serves as reference only. For a broader overview of
the Amazon SWF programming model, see the I< Amazon SWF Developer Guide
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/) >.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf-2012-01-25>


=head1 METHODS

=head2 CountClosedWorkflowExecutions

=over

=item Domain => Str

=item [CloseStatusFilter => L<Paws::SimpleWorkflow::CloseStatusFilter>]

=item [CloseTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>]

=item [ExecutionFilter => L<Paws::SimpleWorkflow::WorkflowExecutionFilter>]

=item [StartTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>]

=item [TagFilter => L<Paws::SimpleWorkflow::TagFilter>]

=item [TypeFilter => L<Paws::SimpleWorkflow::WorkflowTypeFilter>]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::CountClosedWorkflowExecutions>

Returns: a L<Paws::SimpleWorkflow::WorkflowExecutionCount> instance

Returns the number of closed workflow executions within the given
domain that meet the specified filtering criteria.

This operation is eventually consistent. The results are best effort
and may not exactly reflect recent updates and changes.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<tagFilter.tag>: String constraint. The key is C<swf:tagFilter.tag>.

=item *

C<typeFilter.name>: String constraint. The key is
C<swf:typeFilter.name>.

=item *

C<typeFilter.version>: String constraint. The key is
C<swf:typeFilter.version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 CountOpenWorkflowExecutions

=over

=item Domain => Str

=item StartTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>

=item [ExecutionFilter => L<Paws::SimpleWorkflow::WorkflowExecutionFilter>]

=item [TagFilter => L<Paws::SimpleWorkflow::TagFilter>]

=item [TypeFilter => L<Paws::SimpleWorkflow::WorkflowTypeFilter>]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::CountOpenWorkflowExecutions>

Returns: a L<Paws::SimpleWorkflow::WorkflowExecutionCount> instance

Returns the number of open workflow executions within the given domain
that meet the specified filtering criteria.

This operation is eventually consistent. The results are best effort
and may not exactly reflect recent updates and changes.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<tagFilter.tag>: String constraint. The key is C<swf:tagFilter.tag>.

=item *

C<typeFilter.name>: String constraint. The key is
C<swf:typeFilter.name>.

=item *

C<typeFilter.version>: String constraint. The key is
C<swf:typeFilter.version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 CountPendingActivityTasks

=over

=item Domain => Str

=item TaskList => L<Paws::SimpleWorkflow::TaskList>


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::CountPendingActivityTasks>

Returns: a L<Paws::SimpleWorkflow::PendingTaskCount> instance

Returns the estimated number of activity tasks in the specified task
list. The count returned is an approximation and isn't guaranteed to be
exact. If you specify a task list that no activity task was ever
scheduled in then C<0> is returned.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the C<taskList.name> parameter by using a C<Condition>
element with the C<swf:taskList.name> key to allow the action to access
only certain task lists.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 CountPendingDecisionTasks

=over

=item Domain => Str

=item TaskList => L<Paws::SimpleWorkflow::TaskList>


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::CountPendingDecisionTasks>

Returns: a L<Paws::SimpleWorkflow::PendingTaskCount> instance

Returns the estimated number of decision tasks in the specified task
list. The count returned is an approximation and isn't guaranteed to be
exact. If you specify a task list that no decision task was ever
scheduled in then C<0> is returned.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the C<taskList.name> parameter by using a C<Condition>
element with the C<swf:taskList.name> key to allow the action to access
only certain task lists.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 DeprecateActivityType

=over

=item ActivityType => L<Paws::SimpleWorkflow::ActivityType>

=item Domain => Str


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::DeprecateActivityType>

Returns: nothing

Deprecates the specified I<activity type>. After an activity type has
been deprecated, you cannot create new tasks of that activity type.
Tasks of this type that were scheduled before the type was deprecated
continue to run.

This operation is eventually consistent. The results are best effort
and may not exactly reflect recent updates and changes.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<activityType.name>: String constraint. The key is
C<swf:activityType.name>.

=item *

C<activityType.version>: String constraint. The key is
C<swf:activityType.version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 DeprecateDomain

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::DeprecateDomain>

Returns: nothing

Deprecates the specified domain. After a domain has been deprecated it
cannot be used to create new workflow executions or register new types.
However, you can still use visibility actions on this domain.
Deprecating a domain also deprecates all activity and workflow types
registered in the domain. Executions that were started before the
domain was deprecated continues to run.

This operation is eventually consistent. The results are best effort
and may not exactly reflect recent updates and changes.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 DeprecateWorkflowType

=over

=item Domain => Str

=item WorkflowType => L<Paws::SimpleWorkflow::WorkflowType>


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::DeprecateWorkflowType>

Returns: nothing

Deprecates the specified I<workflow type>. After a workflow type has
been deprecated, you cannot create new executions of that type.
Executions that were started before the type was deprecated continues
to run. A deprecated workflow type may still be used when calling
visibility actions.

This operation is eventually consistent. The results are best effort
and may not exactly reflect recent updates and changes.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<workflowType.name>: String constraint. The key is
C<swf:workflowType.name>.

=item *

C<workflowType.version>: String constraint. The key is
C<swf:workflowType.version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 DescribeActivityType

=over

=item ActivityType => L<Paws::SimpleWorkflow::ActivityType>

=item Domain => Str


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::DescribeActivityType>

Returns: a L<Paws::SimpleWorkflow::ActivityTypeDetail> instance

Returns information about the specified activity type. This includes
configuration settings provided when the type was registered and other
general information about the type.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<activityType.name>: String constraint. The key is
C<swf:activityType.name>.

=item *

C<activityType.version>: String constraint. The key is
C<swf:activityType.version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 DescribeDomain

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::DescribeDomain>

Returns: a L<Paws::SimpleWorkflow::DomainDetail> instance

Returns information about the specified domain, including description
and status.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 DescribeWorkflowExecution

=over

=item Domain => Str

=item Execution => L<Paws::SimpleWorkflow::WorkflowExecution>


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::DescribeWorkflowExecution>

Returns: a L<Paws::SimpleWorkflow::WorkflowExecutionDetail> instance

Returns information about the specified workflow execution including
its type and some statistics.

This operation is eventually consistent. The results are best effort
and may not exactly reflect recent updates and changes.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 DescribeWorkflowType

=over

=item Domain => Str

=item WorkflowType => L<Paws::SimpleWorkflow::WorkflowType>


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::DescribeWorkflowType>

Returns: a L<Paws::SimpleWorkflow::WorkflowTypeDetail> instance

Returns information about the specified I<workflow type>. This includes
configuration settings specified when the type was registered and other
information such as creation date, current status, etc.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<workflowType.name>: String constraint. The key is
C<swf:workflowType.name>.

=item *

C<workflowType.version>: String constraint. The key is
C<swf:workflowType.version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 GetWorkflowExecutionHistory

=over

=item Domain => Str

=item Execution => L<Paws::SimpleWorkflow::WorkflowExecution>

=item [MaximumPageSize => Int]

=item [NextPageToken => Str]

=item [ReverseOrder => Bool]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::GetWorkflowExecutionHistory>

Returns: a L<Paws::SimpleWorkflow::History> instance

Returns the history of the specified workflow execution. The results
may be split into multiple pages. To retrieve subsequent pages, make
the call again using the C<nextPageToken> returned by the initial call.

This operation is eventually consistent. The results are best effort
and may not exactly reflect recent updates and changes.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 ListActivityTypes

=over

=item Domain => Str

=item RegistrationStatus => Str

=item [MaximumPageSize => Int]

=item [Name => Str]

=item [NextPageToken => Str]

=item [ReverseOrder => Bool]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::ListActivityTypes>

Returns: a L<Paws::SimpleWorkflow::ActivityTypeInfos> instance

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

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 ListClosedWorkflowExecutions

=over

=item Domain => Str

=item [CloseStatusFilter => L<Paws::SimpleWorkflow::CloseStatusFilter>]

=item [CloseTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>]

=item [ExecutionFilter => L<Paws::SimpleWorkflow::WorkflowExecutionFilter>]

=item [MaximumPageSize => Int]

=item [NextPageToken => Str]

=item [ReverseOrder => Bool]

=item [StartTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>]

=item [TagFilter => L<Paws::SimpleWorkflow::TagFilter>]

=item [TypeFilter => L<Paws::SimpleWorkflow::WorkflowTypeFilter>]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::ListClosedWorkflowExecutions>

Returns: a L<Paws::SimpleWorkflow::WorkflowExecutionInfos> instance

Returns a list of closed workflow executions in the specified domain
that meet the filtering criteria. The results may be split into
multiple pages. To retrieve subsequent pages, make the call again using
the nextPageToken returned by the initial call.

This operation is eventually consistent. The results are best effort
and may not exactly reflect recent updates and changes.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<tagFilter.tag>: String constraint. The key is C<swf:tagFilter.tag>.

=item *

C<typeFilter.name>: String constraint. The key is
C<swf:typeFilter.name>.

=item *

C<typeFilter.version>: String constraint. The key is
C<swf:typeFilter.version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 ListDomains

=over

=item RegistrationStatus => Str

=item [MaximumPageSize => Int]

=item [NextPageToken => Str]

=item [ReverseOrder => Bool]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::ListDomains>

Returns: a L<Paws::SimpleWorkflow::DomainInfos> instance

Returns the list of domains registered in the account. The results may
be split into multiple pages. To retrieve subsequent pages, make the
call again using the nextPageToken returned by the initial call.

This operation is eventually consistent. The results are best effort
and may not exactly reflect recent updates and changes.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains. The element must be set to
C<arn:aws:swf::AccountID:domain/*>, where I<AccountID> is the account
ID, with no dashes.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 ListOpenWorkflowExecutions

=over

=item Domain => Str

=item StartTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>

=item [ExecutionFilter => L<Paws::SimpleWorkflow::WorkflowExecutionFilter>]

=item [MaximumPageSize => Int]

=item [NextPageToken => Str]

=item [ReverseOrder => Bool]

=item [TagFilter => L<Paws::SimpleWorkflow::TagFilter>]

=item [TypeFilter => L<Paws::SimpleWorkflow::WorkflowTypeFilter>]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::ListOpenWorkflowExecutions>

Returns: a L<Paws::SimpleWorkflow::WorkflowExecutionInfos> instance

Returns a list of open workflow executions in the specified domain that
meet the filtering criteria. The results may be split into multiple
pages. To retrieve subsequent pages, make the call again using the
nextPageToken returned by the initial call.

This operation is eventually consistent. The results are best effort
and may not exactly reflect recent updates and changes.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<tagFilter.tag>: String constraint. The key is C<swf:tagFilter.tag>.

=item *

C<typeFilter.name>: String constraint. The key is
C<swf:typeFilter.name>.

=item *

C<typeFilter.version>: String constraint. The key is
C<swf:typeFilter.version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 ListWorkflowTypes

=over

=item Domain => Str

=item RegistrationStatus => Str

=item [MaximumPageSize => Int]

=item [Name => Str]

=item [NextPageToken => Str]

=item [ReverseOrder => Bool]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::ListWorkflowTypes>

Returns: a L<Paws::SimpleWorkflow::WorkflowTypeInfos> instance

Returns information about workflow types in the specified domain. The
results may be split into multiple pages that can be retrieved by
making the call repeatedly.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 PollForActivityTask

=over

=item Domain => Str

=item TaskList => L<Paws::SimpleWorkflow::TaskList>

=item [Identity => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::PollForActivityTask>

Returns: a L<Paws::SimpleWorkflow::ActivityTask> instance

Used by workers to get an ActivityTask from the specified activity
C<taskList>. This initiates a long poll, where the service holds the
HTTP connection open and responds as soon as a task becomes available.
The maximum time the service holds on to the request before responding
is 60 seconds. If no task is available within 60 seconds, the poll
returns an empty result. An empty result, in this context, means that
an ActivityTask is returned, but that the value of taskToken is an
empty string. If a task is returned, the worker should use its type to
identify and process it correctly.

Workers should set their client side socket timeout to at least 70
seconds (10 seconds higher than the maximum time service may hold the
poll request).

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the C<taskList.name> parameter by using a C<Condition>
element with the C<swf:taskList.name> key to allow the action to access
only certain task lists.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 PollForDecisionTask

=over

=item Domain => Str

=item TaskList => L<Paws::SimpleWorkflow::TaskList>

=item [Identity => Str]

=item [MaximumPageSize => Int]

=item [NextPageToken => Str]

=item [ReverseOrder => Bool]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::PollForDecisionTask>

Returns: a L<Paws::SimpleWorkflow::DecisionTask> instance

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
seconds (10 seconds higher than the timeout).

Because the number of workflow history events for a single workflow
execution might be very large, the result returned might be split up
across a number of pages. To retrieve subsequent pages, make additional
calls to C<PollForDecisionTask> using the C<nextPageToken> returned by
the initial call. Note that you do I<not> call
C<GetWorkflowExecutionHistory> with this C<nextPageToken>. Instead,
call C<PollForDecisionTask> again.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the C<taskList.name> parameter by using a C<Condition>
element with the C<swf:taskList.name> key to allow the action to access
only certain task lists.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 RecordActivityTaskHeartbeat

=over

=item TaskToken => Str

=item [Details => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::RecordActivityTaskHeartbeat>

Returns: a L<Paws::SimpleWorkflow::ActivityTaskStatus> instance

Used by activity workers to report to the service that the ActivityTask
represented by the specified C<taskToken> is still making progress. The
worker can also specify details of the progress, for example percent
complete, using the C<details> parameter. This action can also be used
by the worker as a mechanism to check if cancellation is being
requested for the activity task. If a cancellation is being attempted
for the specified task, then the boolean C<cancelRequested> flag
returned by the service is set to C<true>.

This action resets the C<taskHeartbeatTimeout> clock. The
C<taskHeartbeatTimeout> is specified in RegisterActivityType.

This action doesn't in itself create an event in the workflow execution
history. However, if the task times out, the workflow execution history
contains a C<ActivityTaskTimedOut> event that contains the information
from the last heartbeat generated by the activity worker.

The C<taskStartToCloseTimeout> of an activity type is the maximum
duration of an activity task, regardless of the number of
RecordActivityTaskHeartbeat requests received. The
C<taskStartToCloseTimeout> is also specified in RegisterActivityType.

This operation is only useful for long-lived activities to report
liveliness of the task and to determine if a cancellation is being
attempted.

If the C<cancelRequested> flag returns C<true>, a cancellation is being
attempted. If the worker can cancel the activity, it should respond
with RespondActivityTaskCanceled. Otherwise, it should ignore the
cancellation request.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 RegisterActivityType

=over

=item Domain => Str

=item Name => Str

=item Version => Str

=item [DefaultTaskHeartbeatTimeout => Str]

=item [DefaultTaskList => L<Paws::SimpleWorkflow::TaskList>]

=item [DefaultTaskPriority => Str]

=item [DefaultTaskScheduleToCloseTimeout => Str]

=item [DefaultTaskScheduleToStartTimeout => Str]

=item [DefaultTaskStartToCloseTimeout => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::RegisterActivityType>

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

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<defaultTaskList.name>: String constraint. The key is
C<swf:defaultTaskList.name>.

=item *

C<name>: String constraint. The key is C<swf:name>.

=item *

C<version>: String constraint. The key is C<swf:version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 RegisterDomain

=over

=item Name => Str

=item WorkflowExecutionRetentionPeriodInDays => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::RegisterDomain>

Returns: nothing

Registers a new domain.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

You cannot use an IAM policy to control domain access for this action.
The name of the domain being registered is available as the resource of
this action.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 RegisterWorkflowType

=over

=item Domain => Str

=item Name => Str

=item Version => Str

=item [DefaultChildPolicy => Str]

=item [DefaultExecutionStartToCloseTimeout => Str]

=item [DefaultLambdaRole => Str]

=item [DefaultTaskList => L<Paws::SimpleWorkflow::TaskList>]

=item [DefaultTaskPriority => Str]

=item [DefaultTaskStartToCloseTimeout => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::RegisterWorkflowType>

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

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<defaultTaskList.name>: String constraint. The key is
C<swf:defaultTaskList.name>.

=item *

C<name>: String constraint. The key is C<swf:name>.

=item *

C<version>: String constraint. The key is C<swf:version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 RequestCancelWorkflowExecution

=over

=item Domain => Str

=item WorkflowId => Str

=item [RunId => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::RequestCancelWorkflowExecution>

Returns: nothing

Records a C<WorkflowExecutionCancelRequested> event in the currently
running workflow execution identified by the given domain, workflowId,
and runId. This logically requests the cancellation of the workflow
execution as a whole. It is up to the decider to take appropriate
actions when it receives an execution history with this event.

If the runId isn't specified, the C<WorkflowExecutionCancelRequested>
event is recorded in the history of the current open workflow execution
with the specified workflowId in the domain.

Because this action allows the workflow to properly clean up and
gracefully close, it should be used instead of
TerminateWorkflowExecution when possible.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 RespondActivityTaskCanceled

=over

=item TaskToken => Str

=item [Details => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::RespondActivityTaskCanceled>

Returns: nothing

Used by workers to tell the service that the ActivityTask identified by
the C<taskToken> was successfully canceled. Additional C<details> can
be provided using the C<details> argument.

These C<details> (if provided) appear in the C<ActivityTaskCanceled>
event added to the workflow history.

Only use this operation if the C<canceled> flag of a
RecordActivityTaskHeartbeat request returns C<true> and if the activity
can be safely undone or abandoned.

A task is considered open from the time that it is scheduled until it
is closed. Therefore a task is reported as open while a worker is
processing it. A task is closed after it has been specified in a call
to RespondActivityTaskCompleted, RespondActivityTaskCanceled,
RespondActivityTaskFailed, or the task has timed out
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types).

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 RespondActivityTaskCompleted

=over

=item TaskToken => Str

=item [Result => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::RespondActivityTaskCompleted>

Returns: nothing

Used by workers to tell the service that the ActivityTask identified by
the C<taskToken> completed successfully with a C<result> (if provided).
The C<result> appears in the C<ActivityTaskCompleted> event in the
workflow history.

If the requested task doesn't complete successfully, use
RespondActivityTaskFailed instead. If the worker finds that the task is
canceled through the C<canceled> flag returned by
RecordActivityTaskHeartbeat, it should cancel the task, clean up and
then call RespondActivityTaskCanceled.

A task is considered open from the time that it is scheduled until it
is closed. Therefore a task is reported as open while a worker is
processing it. A task is closed after it has been specified in a call
to RespondActivityTaskCompleted, RespondActivityTaskCanceled,
RespondActivityTaskFailed, or the task has timed out
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types).

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 RespondActivityTaskFailed

=over

=item TaskToken => Str

=item [Details => Str]

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::RespondActivityTaskFailed>

Returns: nothing

Used by workers to tell the service that the ActivityTask identified by
the C<taskToken> has failed with C<reason> (if specified). The
C<reason> and C<details> appear in the C<ActivityTaskFailed> event
added to the workflow history.

A task is considered open from the time that it is scheduled until it
is closed. Therefore a task is reported as open while a worker is
processing it. A task is closed after it has been specified in a call
to RespondActivityTaskCompleted, RespondActivityTaskCanceled,
RespondActivityTaskFailed, or the task has timed out
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types).

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 RespondDecisionTaskCompleted

=over

=item TaskToken => Str

=item [Decisions => ArrayRef[L<Paws::SimpleWorkflow::Decision>]]

=item [ExecutionContext => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::RespondDecisionTaskCompleted>

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
Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 SignalWorkflowExecution

=over

=item Domain => Str

=item SignalName => Str

=item WorkflowId => Str

=item [Input => Str]

=item [RunId => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::SignalWorkflowExecution>

Returns: nothing

Records a C<WorkflowExecutionSignaled> event in the workflow execution
history and creates a decision task for the workflow execution
identified by the given domain, workflowId and runId. The event is
recorded with the specified user defined signalName and input (if
provided).

If a runId isn't specified, then the C<WorkflowExecutionSignaled> event
is recorded in the history of the current open workflow with the
matching workflowId in the domain.

If the specified workflow execution isn't open, this method fails with
C<UnknownResource>.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 StartWorkflowExecution

=over

=item Domain => Str

=item WorkflowId => Str

=item WorkflowType => L<Paws::SimpleWorkflow::WorkflowType>

=item [ChildPolicy => Str]

=item [ExecutionStartToCloseTimeout => Str]

=item [Input => Str]

=item [LambdaRole => Str]

=item [TagList => ArrayRef[Str|Undef]]

=item [TaskList => L<Paws::SimpleWorkflow::TaskList>]

=item [TaskPriority => Str]

=item [TaskStartToCloseTimeout => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::StartWorkflowExecution>

Returns: a L<Paws::SimpleWorkflow::Run> instance

Starts an execution of the workflow type in the specified domain using
the provided C<workflowId> and input data.

This action returns the newly started workflow execution.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

Constrain the following parameters by using a C<Condition> element with
the appropriate keys.

=over

=item *

C<tagList.member.0>: The key is C<swf:tagList.member.0>.

=item *

C<tagList.member.1>: The key is C<swf:tagList.member.1>.

=item *

C<tagList.member.2>: The key is C<swf:tagList.member.2>.

=item *

C<tagList.member.3>: The key is C<swf:tagList.member.3>.

=item *

C<tagList.member.4>: The key is C<swf:tagList.member.4>.

=item *

C<taskList>: String constraint. The key is C<swf:taskList.name>.

=item *

C<workflowType.name>: String constraint. The key is
C<swf:workflowType.name>.

=item *

C<workflowType.version>: String constraint. The key is
C<swf:workflowType.version>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 TerminateWorkflowExecution

=over

=item Domain => Str

=item WorkflowId => Str

=item [ChildPolicy => Str]

=item [Details => Str]

=item [Reason => Str]

=item [RunId => Str]


=back

Each argument is described in detail in: L<Paws::SimpleWorkflow::TerminateWorkflowExecution>

Returns: nothing

Records a C<WorkflowExecutionTerminated> event and forces closure of
the workflow execution identified by the given domain, runId, and
workflowId. The child policy, registered with the workflow type or
specified when starting this execution, is applied to any open child
workflow executions of this workflow execution.

If the identified workflow execution was in progress, it is terminated
immediately.

If a runId isn't specified, then the C<WorkflowExecutionTerminated>
event is recorded in the history of the current open workflow with the
matching workflowId in the domain.

You should consider using RequestCancelWorkflowExecution action instead
because it allows the workflow to gracefully close while
TerminateWorkflowExecution doesn't.

B<Access Control>

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

=over

=item *

Use a C<Resource> element with the domain name to limit the action to
only specified domains.

=item *

Use an C<Action> element to allow or deny permission to call this
action.

=item *

You cannot use an IAM policy to constrain this action's parameters.

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllWorkflowExecutionHistory(sub { },Domain => Str, Execution => L<Paws::SimpleWorkflow::WorkflowExecution>, [MaximumPageSize => Int, NextPageToken => Str, ReverseOrder => Bool])

=head2 GetAllWorkflowExecutionHistory(Domain => Str, Execution => L<Paws::SimpleWorkflow::WorkflowExecution>, [MaximumPageSize => Int, NextPageToken => Str, ReverseOrder => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - events, passing the object as the first parameter, and the string 'events' as the second parameter 

If not, it will return a a L<Paws::SimpleWorkflow::History> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllActivityTypes(sub { },Domain => Str, RegistrationStatus => Str, [MaximumPageSize => Int, Name => Str, NextPageToken => Str, ReverseOrder => Bool])

=head2 ListAllActivityTypes(Domain => Str, RegistrationStatus => Str, [MaximumPageSize => Int, Name => Str, NextPageToken => Str, ReverseOrder => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - typeInfos, passing the object as the first parameter, and the string 'typeInfos' as the second parameter 

If not, it will return a a L<Paws::SimpleWorkflow::ActivityTypeInfos> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClosedWorkflowExecutions(sub { },Domain => Str, [CloseStatusFilter => L<Paws::SimpleWorkflow::CloseStatusFilter>, CloseTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>, ExecutionFilter => L<Paws::SimpleWorkflow::WorkflowExecutionFilter>, MaximumPageSize => Int, NextPageToken => Str, ReverseOrder => Bool, StartTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>, TagFilter => L<Paws::SimpleWorkflow::TagFilter>, TypeFilter => L<Paws::SimpleWorkflow::WorkflowTypeFilter>])

=head2 ListAllClosedWorkflowExecutions(Domain => Str, [CloseStatusFilter => L<Paws::SimpleWorkflow::CloseStatusFilter>, CloseTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>, ExecutionFilter => L<Paws::SimpleWorkflow::WorkflowExecutionFilter>, MaximumPageSize => Int, NextPageToken => Str, ReverseOrder => Bool, StartTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>, TagFilter => L<Paws::SimpleWorkflow::TagFilter>, TypeFilter => L<Paws::SimpleWorkflow::WorkflowTypeFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - executionInfos, passing the object as the first parameter, and the string 'executionInfos' as the second parameter 

If not, it will return a a L<Paws::SimpleWorkflow::WorkflowExecutionInfos> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDomains(sub { },RegistrationStatus => Str, [MaximumPageSize => Int, NextPageToken => Str, ReverseOrder => Bool])

=head2 ListAllDomains(RegistrationStatus => Str, [MaximumPageSize => Int, NextPageToken => Str, ReverseOrder => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - domainInfos, passing the object as the first parameter, and the string 'domainInfos' as the second parameter 

If not, it will return a a L<Paws::SimpleWorkflow::DomainInfos> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOpenWorkflowExecutions(sub { },Domain => Str, StartTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>, [ExecutionFilter => L<Paws::SimpleWorkflow::WorkflowExecutionFilter>, MaximumPageSize => Int, NextPageToken => Str, ReverseOrder => Bool, TagFilter => L<Paws::SimpleWorkflow::TagFilter>, TypeFilter => L<Paws::SimpleWorkflow::WorkflowTypeFilter>])

=head2 ListAllOpenWorkflowExecutions(Domain => Str, StartTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>, [ExecutionFilter => L<Paws::SimpleWorkflow::WorkflowExecutionFilter>, MaximumPageSize => Int, NextPageToken => Str, ReverseOrder => Bool, TagFilter => L<Paws::SimpleWorkflow::TagFilter>, TypeFilter => L<Paws::SimpleWorkflow::WorkflowTypeFilter>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - executionInfos, passing the object as the first parameter, and the string 'executionInfos' as the second parameter 

If not, it will return a a L<Paws::SimpleWorkflow::WorkflowExecutionInfos> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflowTypes(sub { },Domain => Str, RegistrationStatus => Str, [MaximumPageSize => Int, Name => Str, NextPageToken => Str, ReverseOrder => Bool])

=head2 ListAllWorkflowTypes(Domain => Str, RegistrationStatus => Str, [MaximumPageSize => Int, Name => Str, NextPageToken => Str, ReverseOrder => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - typeInfos, passing the object as the first parameter, and the string 'typeInfos' as the second parameter 

If not, it will return a a L<Paws::SimpleWorkflow::WorkflowTypeInfos> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 PollForAllDecisionTasks(sub { },Domain => Str, TaskList => L<Paws::SimpleWorkflow::TaskList>, [Identity => Str, MaximumPageSize => Int, NextPageToken => Str, ReverseOrder => Bool])

=head2 PollForAllDecisionTasks(Domain => Str, TaskList => L<Paws::SimpleWorkflow::TaskList>, [Identity => Str, MaximumPageSize => Int, NextPageToken => Str, ReverseOrder => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - events, passing the object as the first parameter, and the string 'events' as the second parameter 

If not, it will return a a L<Paws::SimpleWorkflow::DecisionTask> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

