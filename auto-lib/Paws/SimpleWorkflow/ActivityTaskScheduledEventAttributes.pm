package Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes;
  use Moose;
  has activityId => (is => 'ro', isa => 'Str', required => 1);
  has activityType => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityType', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Int', required => 1);
  has heartbeatTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has scheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has scheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', required => 1);
  has taskPriority => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes object:

  $service_obj->Method(Att1 => { activityId => $value, ..., taskPriority => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ActivityTaskScheduledEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->activityId

=head1 DESCRIPTION

Provides details of the C<ActivityTaskScheduled> event.

=head1 ATTRIBUTES

=head2 B<REQUIRED> activityId => Str

  The unique ID of the activity task.

=head2 B<REQUIRED> activityType => L<Paws::SimpleWorkflow::ActivityType>

  The type of the activity task.

=head2 control => Str

  I<Optional.> Data attached to the event that can be used by the decider
in subsequent workflow tasks. This data is not sent to the activity.

=head2 B<REQUIRED> decisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision that resulted in the scheduling of this activity task. This
information can be useful for diagnosing problems by tracing back the
chain of events leading up to this event.

=head2 heartbeatTimeout => Str

  The maximum time before which the worker processing this task must
report progress by calling RecordActivityTaskHeartbeat. If the timeout
is exceeded, the activity task is automatically timed out. If the
worker subsequently attempts to record a heartbeat or return a result,
it will be ignored.

=head2 input => Str

  The input provided to the activity task.

=head2 scheduleToCloseTimeout => Str

  The maximum amount of time for this activity task.

=head2 scheduleToStartTimeout => Str

  The maximum amount of time the activity task can wait to be assigned to
a worker.

=head2 startToCloseTimeout => Str

  The maximum amount of time a worker may take to process the activity
task.

=head2 B<REQUIRED> taskList => L<Paws::SimpleWorkflow::TaskList>

  The task list in which the activity task has been scheduled.

=head2 taskPriority => Str

  I<Optional.> The priority to assign to the scheduled activity task. If
set, this will override any default priority value that was assigned
when the activity type was registered.

Valid values are integers that range from Java's C<Integer.MIN_VALUE>
(-2147483648) to C<Integer.MAX_VALUE> (2147483647). Higher numbers
indicate higher priority.

For more information about setting task priority, see Setting Task
Priority in the I<Amazon Simple Workflow Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

