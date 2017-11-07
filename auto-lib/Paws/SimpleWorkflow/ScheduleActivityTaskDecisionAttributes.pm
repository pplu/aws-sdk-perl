package Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes;
  use Moose;
  has ActivityId => (is => 'ro', isa => 'Str', request_name => 'activityId', traits => ['NameInRequest'], required => 1);
  has ActivityType => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityType', request_name => 'activityType', traits => ['NameInRequest'], required => 1);
  has Control => (is => 'ro', isa => 'Str', request_name => 'control', traits => ['NameInRequest']);
  has HeartbeatTimeout => (is => 'ro', isa => 'Str', request_name => 'heartbeatTimeout', traits => ['NameInRequest']);
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has ScheduleToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'scheduleToCloseTimeout', traits => ['NameInRequest']);
  has ScheduleToStartTimeout => (is => 'ro', isa => 'Str', request_name => 'scheduleToStartTimeout', traits => ['NameInRequest']);
  has StartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'startToCloseTimeout', traits => ['NameInRequest']);
  has TaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', request_name => 'taskList', traits => ['NameInRequest']);
  has TaskPriority => (is => 'ro', isa => 'Str', request_name => 'taskPriority', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes object:

  $service_obj->Method(Att1 => { ActivityId => $value, ..., TaskPriority => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityId

=head1 DESCRIPTION

Provides the details of the C<ScheduleActivityTask> decision.

B<Access Control>

You can use IAM policies to control this decision's access to Amazon
SWF resources as follows:

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

C<activityType.name> E<ndash> String constraint. The key is
C<swf:activityType.name>.

=item *

C<activityType.version> E<ndash> String constraint. The key is
C<swf:activityType.version>.

=item *

C<taskList> E<ndash> String constraint. The key is
C<swf:taskList.name>.

=back

=back

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's C<cause> parameter is
set to C<OPERATION_NOT_PERMITTED>. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivityId => Str

  The C<activityId> of the activity task.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.


=head2 B<REQUIRED> ActivityType => L<Paws::SimpleWorkflow::ActivityType>

  The type of the activity task to schedule.


=head2 Control => Str

  Data attached to the event that can be used by the decider in
subsequent workflow tasks. This data isn't sent to the activity.


=head2 HeartbeatTimeout => Str

  If set, specifies the maximum time before which a worker processing a
task of this type must report progress by calling
RecordActivityTaskHeartbeat. If the timeout is exceeded, the activity
task is automatically timed out. If the worker subsequently attempts to
record a heartbeat or returns a result, it is ignored. This overrides
the default heartbeat timeout specified when registering the activity
type using RegisterActivityType.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 Input => Str

  The input provided to the activity task.


=head2 ScheduleToCloseTimeout => Str

  The maximum duration for this activity task.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.

A schedule-to-close timeout for this activity task must be specified
either as a default for the activity type or through this field. If
neither this field is set nor a default schedule-to-close timeout was
specified at registration time then a fault is returned.


=head2 ScheduleToStartTimeout => Str

  If set, specifies the maximum duration the activity task can wait to be
assigned to a worker. This overrides the default schedule-to-start
timeout specified when registering the activity type using
RegisterActivityType.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.

A schedule-to-start timeout for this activity task must be specified
either as a default for the activity type or through this field. If
neither this field is set nor a default schedule-to-start timeout was
specified at registration time then a fault is returned.


=head2 StartToCloseTimeout => Str

  If set, specifies the maximum duration a worker may take to process
this activity task. This overrides the default start-to-close timeout
specified when registering the activity type using
RegisterActivityType.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.

A start-to-close timeout for this activity task must be specified
either as a default for the activity type or through this field. If
neither this field is set nor a default start-to-close timeout was
specified at registration time then a fault is returned.


=head2 TaskList => L<Paws::SimpleWorkflow::TaskList>

  If set, specifies the name of the task list in which to schedule the
activity task. If not specified, the C<defaultTaskList> registered with
the activity type is used.

A task list for this activity task must be specified either as a
default for the activity type or through this field. If neither this
field is set nor a default task list was specified at registration time
then a fault is returned.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.


=head2 TaskPriority => Str

  If set, specifies the priority with which the activity task is to be
assigned to a worker. This overrides the defaultTaskPriority specified
when registering the activity type using RegisterActivityType. Valid
values are integers that range from Java's C<Integer.MIN_VALUE>
(-2147483648) to C<Integer.MAX_VALUE> (2147483647). Higher numbers
indicate higher priority.

For more information about setting task priority, see Setting Task
Priority
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html)
in the I<Amazon SWF Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

