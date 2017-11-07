package Paws::SimpleWorkflow::ActivityTypeConfiguration;
  use Moose;
  has DefaultTaskHeartbeatTimeout => (is => 'ro', isa => 'Str', request_name => 'defaultTaskHeartbeatTimeout', traits => ['NameInRequest']);
  has DefaultTaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', request_name => 'defaultTaskList', traits => ['NameInRequest']);
  has DefaultTaskPriority => (is => 'ro', isa => 'Str', request_name => 'defaultTaskPriority', traits => ['NameInRequest']);
  has DefaultTaskScheduleToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'defaultTaskScheduleToCloseTimeout', traits => ['NameInRequest']);
  has DefaultTaskScheduleToStartTimeout => (is => 'ro', isa => 'Str', request_name => 'defaultTaskScheduleToStartTimeout', traits => ['NameInRequest']);
  has DefaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'defaultTaskStartToCloseTimeout', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTypeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ActivityTypeConfiguration object:

  $service_obj->Method(Att1 => { DefaultTaskHeartbeatTimeout => $value, ..., DefaultTaskStartToCloseTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ActivityTypeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultTaskHeartbeatTimeout

=head1 DESCRIPTION

Configuration settings registered with the activity type.

=head1 ATTRIBUTES


=head2 DefaultTaskHeartbeatTimeout => Str

  The default maximum time, in seconds, before which a worker processing
a task must report progress by calling RecordActivityTaskHeartbeat.

You can specify this value only when I<registering> an activity type.
The registered default value can be overridden when you schedule a task
through the C<ScheduleActivityTask> Decision. If the activity worker
subsequently attempts to record a heartbeat or returns a result, the
activity worker receives an C<UnknownResource> fault. In this case,
Amazon SWF no longer considers the activity task to be valid; the
activity worker should clean up the activity task.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 DefaultTaskList => L<Paws::SimpleWorkflow::TaskList>

  The default task list specified for this activity type at registration.
This default is used if a task list isn't provided when a task is
scheduled through the C<ScheduleActivityTask> Decision. You can
override the default registered task list when scheduling a task
through the C<ScheduleActivityTask> Decision.


=head2 DefaultTaskPriority => Str

  The default task priority for tasks of this activity type, specified at
registration. If not set, then C<0> is used as the default priority.
This default can be overridden when scheduling an activity task.

Valid values are integers that range from Java's C<Integer.MIN_VALUE>
(-2147483648) to C<Integer.MAX_VALUE> (2147483647). Higher numbers
indicate higher priority.

For more information about setting task priority, see Setting Task
Priority
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html)
in the I<Amazon SWF Developer Guide>.


=head2 DefaultTaskScheduleToCloseTimeout => Str

  The default maximum duration, specified when registering the activity
type, for tasks of this activity type. You can override this default
when scheduling a task through the C<ScheduleActivityTask> Decision.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 DefaultTaskScheduleToStartTimeout => Str

  The default maximum duration, specified when registering the activity
type, that a task of an activity type can wait before being assigned to
a worker. You can override this default when scheduling a task through
the C<ScheduleActivityTask> Decision.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.


=head2 DefaultTaskStartToCloseTimeout => Str

  The default maximum duration for tasks of an activity type specified
when registering the activity type. You can override this default when
scheduling a task through the C<ScheduleActivityTask> Decision.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

