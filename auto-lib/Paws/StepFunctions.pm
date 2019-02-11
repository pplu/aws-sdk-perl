package Paws::StepFunctions;
  use Moose;
  sub service { 'states' }
  sub signing_name { 'states' }
  sub version { '2016-11-23' }
  sub target_prefix { 'AWSStepFunctions' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateActivity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::CreateActivity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStateMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::CreateStateMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteActivity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DeleteActivity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStateMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DeleteStateMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeActivity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DescribeActivity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DescribeExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStateMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DescribeStateMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStateMachineForExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DescribeStateMachineForExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetActivityTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::GetActivityTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExecutionHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::GetExecutionHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListActivities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ListActivities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ListExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStateMachines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ListStateMachines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendTaskFailure {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::SendTaskFailure', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendTaskHeartbeat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::SendTaskHeartbeat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendTaskSuccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::SendTaskSuccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::StartExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::StopExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStateMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::UpdateStateMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllExecutionHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetExecutionHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetExecutionHistory(@_, nextToken => $next_result->nextToken);
        push @{ $result->events }, @{ $next_result->events };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'events') foreach (@{ $result->events });
        $result = $self->GetExecutionHistory(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'events') foreach (@{ $result->events });
    }

    return undef
  }
  sub ListAllActivities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListActivities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListActivities(@_, nextToken => $next_result->nextToken);
        push @{ $result->activities }, @{ $next_result->activities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'activities') foreach (@{ $result->activities });
        $result = $self->ListActivities(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'activities') foreach (@{ $result->activities });
    }

    return undef
  }
  sub ListAllExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExecutions(@_, nextToken => $next_result->nextToken);
        push @{ $result->executions }, @{ $next_result->executions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'executions') foreach (@{ $result->executions });
        $result = $self->ListExecutions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'executions') foreach (@{ $result->executions });
    }

    return undef
  }
  sub ListAllStateMachines {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStateMachines(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStateMachines(@_, nextToken => $next_result->nextToken);
        push @{ $result->stateMachines }, @{ $next_result->stateMachines };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'stateMachines') foreach (@{ $result->stateMachines });
        $result = $self->ListStateMachines(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'stateMachines') foreach (@{ $result->stateMachines });
    }

    return undef
  }


  sub operations { qw/CreateActivity CreateStateMachine DeleteActivity DeleteStateMachine DescribeActivity DescribeExecution DescribeStateMachine DescribeStateMachineForExecution GetActivityTask GetExecutionHistory ListActivities ListExecutions ListStateMachines ListTagsForResource SendTaskFailure SendTaskHeartbeat SendTaskSuccess StartExecution StopExecution TagResource UntagResource UpdateStateMachine / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions - Perl Interface to AWS AWS Step Functions

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('StepFunctions');
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

AWS Step Functions

AWS Step Functions is a service that lets you coordinate the components
of distributed applications and microservices using visual workflows.

You can use Step Functions to build applications from individual
components, each of which performs a discrete function, or I<task>,
allowing you to scale and change applications quickly. Step Functions
provides a console that helps visualize the components of your
application as a series of steps. Step Functions automatically triggers
and tracks each step, and retries steps when there are errors, so your
application executes predictably and in the right order every time.
Step Functions logs the state of each step, so you can quickly diagnose
and debug any issues.

Step Functions manages operations and underlying infrastructure to
ensure your application is available at any scale. You can run tasks on
AWS, your own servers, or any system that has access to AWS. You can
access and use Step Functions using the console, the AWS SDKs, or an
HTTP API. For more information about Step Functions, see the I< AWS
Step Functions Developer Guide
(http://docs.aws.amazon.com/step-functions/latest/dg/welcome.html) >.

For the AWS API documentation, see L<https://docs.aws.amazon.com/step-functions/>


=head1 METHODS

=head2 CreateActivity

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::CreateActivity>

Returns: a L<Paws::StepFunctions::CreateActivityOutput> instance

Creates an activity. An activity is a task that you write in any
programming language and host on any machine that has access to AWS
Step Functions. Activities must poll Step Functions using the
C<GetActivityTask> API action and respond using C<SendTask*> API
actions. This function lets Step Functions know the existence of your
activity and returns an identifier for use in a state machine and when
polling from the activity.


=head2 CreateStateMachine

=over

=item Definition => Str

=item Name => Str

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::CreateStateMachine>

Returns: a L<Paws::StepFunctions::CreateStateMachineOutput> instance

Creates a state machine. A state machine consists of a collection of
states that can do work (C<Task> states), determine to which states to
transition next (C<Choice> states), stop an execution with an error
(C<Fail> states), and so on. State machines are specified using a
JSON-based, structured language.


=head2 DeleteActivity

=over

=item ActivityArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DeleteActivity>

Returns: a L<Paws::StepFunctions::DeleteActivityOutput> instance

Deletes an activity.


=head2 DeleteStateMachine

=over

=item StateMachineArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DeleteStateMachine>

Returns: a L<Paws::StepFunctions::DeleteStateMachineOutput> instance

Deletes a state machine. This is an asynchronous operation: It sets the
state machine's status to C<DELETING> and begins the deletion process.
Each state machine execution is deleted the next time it makes a state
transition.

The state machine itself is deleted after all executions are completed
or deleted.


=head2 DescribeActivity

=over

=item ActivityArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DescribeActivity>

Returns: a L<Paws::StepFunctions::DescribeActivityOutput> instance

Describes an activity.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.


=head2 DescribeExecution

=over

=item ExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DescribeExecution>

Returns: a L<Paws::StepFunctions::DescribeExecutionOutput> instance

Describes an execution.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.


=head2 DescribeStateMachine

=over

=item StateMachineArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DescribeStateMachine>

Returns: a L<Paws::StepFunctions::DescribeStateMachineOutput> instance

Describes a state machine.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.


=head2 DescribeStateMachineForExecution

=over

=item ExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DescribeStateMachineForExecution>

Returns: a L<Paws::StepFunctions::DescribeStateMachineForExecutionOutput> instance

Describes the state machine associated with a specific execution.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.


=head2 GetActivityTask

=over

=item ActivityArn => Str

=item [WorkerName => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::GetActivityTask>

Returns: a L<Paws::StepFunctions::GetActivityTaskOutput> instance

Used by workers to retrieve a task (with the specified activity ARN)
which has been scheduled for execution by a running state machine. This
initiates a long poll, where the service holds the HTTP connection open
and responds as soon as a task becomes available (i.e. an execution of
a task of this type is needed.) The maximum time the service holds on
to the request before responding is 60 seconds. If no task is available
within 60 seconds, the poll returns a C<taskToken> with a null string.

Workers should set their client side socket timeout to at least 65
seconds (5 seconds higher than the maximum time the service may hold
the poll request).

Polling with C<GetActivityTask> can cause latency in some
implementations. See Avoid Latency When Polling for Activity Tasks
(http://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html)
in the Step Functions Developer Guide.


=head2 GetExecutionHistory

=over

=item ExecutionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReverseOrder => Bool]


=back

Each argument is described in detail in: L<Paws::StepFunctions::GetExecutionHistory>

Returns: a L<Paws::StepFunctions::GetExecutionHistoryOutput> instance

Returns the history of the specified execution as a list of events. By
default, the results are returned in ascending order of the
C<timeStamp> of the events. Use the C<reverseOrder> parameter to get
the latest events first.

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.


=head2 ListActivities

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::ListActivities>

Returns: a L<Paws::StepFunctions::ListActivitiesOutput> instance

Lists the existing activities.

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.


=head2 ListExecutions

=over

=item StateMachineArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::ListExecutions>

Returns: a L<Paws::StepFunctions::ListExecutionsOutput> instance

Lists the executions of a state machine that meet the filtering
criteria. Results are sorted by time, with the most recent execution
first.

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.


=head2 ListStateMachines

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::ListStateMachines>

Returns: a L<Paws::StepFunctions::ListStateMachinesOutput> instance

Lists the existing state machines.

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::ListTagsForResource>

Returns: a L<Paws::StepFunctions::ListTagsForResourceOutput> instance

List tags for a given resource.


=head2 SendTaskFailure

=over

=item TaskToken => Str

=item [Cause => Str]

=item [Error => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::SendTaskFailure>

Returns: a L<Paws::StepFunctions::SendTaskFailureOutput> instance

Used by workers to report that the task identified by the C<taskToken>
failed.


=head2 SendTaskHeartbeat

=over

=item TaskToken => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::SendTaskHeartbeat>

Returns: a L<Paws::StepFunctions::SendTaskHeartbeatOutput> instance

Used by workers to report to the service that the task represented by
the specified C<taskToken> is still making progress. This action resets
the C<Heartbeat> clock. The C<Heartbeat> threshold is specified in the
state machine's Amazon States Language definition. This action does not
in itself create an event in the execution history. However, if the
task times out, the execution history contains an C<ActivityTimedOut>
event.

The C<Timeout> of a task, defined in the state machine's Amazon States
Language definition, is its maximum allowed duration, regardless of the
number of SendTaskHeartbeat requests received.

This operation is only useful for long-lived tasks to report the
liveliness of the task.


=head2 SendTaskSuccess

=over

=item Output => Str

=item TaskToken => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::SendTaskSuccess>

Returns: a L<Paws::StepFunctions::SendTaskSuccessOutput> instance

Used by workers to report that the task identified by the C<taskToken>
completed successfully.


=head2 StartExecution

=over

=item StateMachineArn => Str

=item [Input => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::StartExecution>

Returns: a L<Paws::StepFunctions::StartExecutionOutput> instance

Starts a state machine execution.

C<StartExecution> is idempotent. If C<StartExecution> is called with
the same name and input as a running execution, the call will succeed
and return the same response as the original request. If the execution
is closed or if the input is different, it will return a 400
C<ExecutionAlreadyExists> error. Names can be reused after 90 days.


=head2 StopExecution

=over

=item ExecutionArn => Str

=item [Cause => Str]

=item [Error => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::StopExecution>

Returns: a L<Paws::StepFunctions::StopExecutionOutput> instance

Stops an execution.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::StepFunctions::Tag>]


=back

Each argument is described in detail in: L<Paws::StepFunctions::TagResource>

Returns: a L<Paws::StepFunctions::TagResourceOutput> instance

Add a tag to a Step Functions resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::StepFunctions::UntagResource>

Returns: a L<Paws::StepFunctions::UntagResourceOutput> instance

Remove a tag from a Step Functions resource


=head2 UpdateStateMachine

=over

=item StateMachineArn => Str

=item [Definition => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::UpdateStateMachine>

Returns: a L<Paws::StepFunctions::UpdateStateMachineOutput> instance

Updates an existing state machine by modifying its C<definition> and/or
C<roleArn>. Running executions will continue to use the previous
C<definition> and C<roleArn>. You must include at least one of
C<definition> or C<roleArn> or you will receive a
C<MissingRequiredParameter> error.

All C<StartExecution> calls within a few seconds will use the updated
C<definition> and C<roleArn>. Executions started immediately after
calling C<UpdateStateMachine> may use the previous state machine
C<definition> and C<roleArn>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllExecutionHistory(sub { },ExecutionArn => Str, [MaxResults => Int, NextToken => Str, ReverseOrder => Bool])

=head2 GetAllExecutionHistory(ExecutionArn => Str, [MaxResults => Int, NextToken => Str, ReverseOrder => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - events, passing the object as the first parameter, and the string 'events' as the second parameter 

If not, it will return a a L<Paws::StepFunctions::GetExecutionHistoryOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllActivities(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllActivities([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - activities, passing the object as the first parameter, and the string 'activities' as the second parameter 

If not, it will return a a L<Paws::StepFunctions::ListActivitiesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExecutions(sub { },StateMachineArn => Str, [MaxResults => Int, NextToken => Str, StatusFilter => Str])

=head2 ListAllExecutions(StateMachineArn => Str, [MaxResults => Int, NextToken => Str, StatusFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - executions, passing the object as the first parameter, and the string 'executions' as the second parameter 

If not, it will return a a L<Paws::StepFunctions::ListExecutionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStateMachines(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllStateMachines([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - stateMachines, passing the object as the first parameter, and the string 'stateMachines' as the second parameter 

If not, it will return a a L<Paws::StepFunctions::ListStateMachinesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

