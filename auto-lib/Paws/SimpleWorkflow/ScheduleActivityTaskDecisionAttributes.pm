package Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes;
  use Moose;
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityType', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has heartbeatTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has scheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has scheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList');
  has taskPriority => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes object:

  $service_obj->Method(Att1 => { activityId => $value, ..., taskPriority => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ScheduleActivityTaskDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->activityId

=head1 ATTRIBUTES

=head2 B<REQUIRED> activityId => Str

  B<Required.> The C<activityId> of the activity task.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not
contain the literal string quotarnquot.

=head2 B<REQUIRED> activityType => Paws::SimpleWorkflow::ActivityType

  B<Required.> The type of the activity task to schedule.

=head2 control => Str

  I<Optional.> Data attached to the event that can be used by the decider
in subsequent workflow tasks. This data is not sent to the activity.

=head2 heartbeatTimeout => Str

  If set, specifies the maximum time before which a worker processing a
task of this type must report progress by calling
RecordActivityTaskHeartbeat. If the timeout is exceeded, the activity
task is automatically timed out. If the worker subsequently attempts to
record a heartbeat or returns a result, it will be ignored. This
overrides the default heartbeat timeout specified when registering the
activity type using RegisterActivityType.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

=head2 input => Str

  The input provided to the activity task.

=head2 scheduleToCloseTimeout => Str

  The maximum duration for this activity task.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

A schedule-to-close timeout for this activity task must be specified
either as a default for the activity type or through this field. If
neither this field is set nor a default schedule-to-close timeout was
specified at registration time then a fault will be returned.

=head2 scheduleToStartTimeout => Str

  I<Optional.> If set, specifies the maximum duration the activity task
can wait to be assigned to a worker. This overrides the default
schedule-to-start timeout specified when registering the activity type
using RegisterActivityType.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

A schedule-to-start timeout for this activity task must be specified
either as a default for the activity type or through this field. If
neither this field is set nor a default schedule-to-start timeout was
specified at registration time then a fault will be returned.

=head2 startToCloseTimeout => Str

  If set, specifies the maximum duration a worker may take to process
this activity task. This overrides the default start-to-close timeout
specified when registering the activity type using
RegisterActivityType.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

A start-to-close timeout for this activity task must be specified
either as a default for the activity type or through this field. If
neither this field is set nor a default start-to-close timeout was
specified at registration time then a fault will be returned.

=head2 taskList => Paws::SimpleWorkflow::TaskList

  If set, specifies the name of the task list in which to schedule the
activity task. If not specified, the C<defaultTaskList> registered with
the activity type will be used.

A task list for this activity task must be specified either as a
default for the activity type or through this field. If neither this
field is set nor a default task list was specified at registration time
then a fault will be returned.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not
contain the literal string quotarnquot.

=head2 taskPriority => Str

  I<Optional.> If set, specifies the priority with which the activity
task is to be assigned to a worker. This overrides the
defaultTaskPriority specified when registering the activity type using
RegisterActivityType. Valid values are integers that range from Java's
C<Integer.MIN_VALUE> (-2147483648) to C<Integer.MAX_VALUE>
(2147483647). Higher numbers indicate higher priority.

For more information about setting task priority, see Setting Task
Priority in the I<Amazon Simple Workflow Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

