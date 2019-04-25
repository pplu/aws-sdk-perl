
package Paws::SimpleWorkflow::RegisterActivityType;
  use Moose;
  has DefaultTaskHeartbeatTimeout => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultTaskHeartbeatTimeout' );
  has DefaultTaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', traits => ['NameInRequest'], request_name => 'defaultTaskList' );
  has DefaultTaskPriority => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultTaskPriority' );
  has DefaultTaskScheduleToCloseTimeout => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultTaskScheduleToCloseTimeout' );
  has DefaultTaskScheduleToStartTimeout => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultTaskScheduleToStartTimeout' );
  has DefaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultTaskStartToCloseTimeout' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterActivityType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::RegisterActivityType - Arguments for method RegisterActivityType on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterActivityType on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method RegisterActivityType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterActivityType.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    $swf->RegisterActivityType(
      Domain                      => 'MyDomainName',
      Name                        => 'MyName',
      Version                     => 'MyVersion',
      DefaultTaskHeartbeatTimeout => 'MyDurationInSecondsOptional',   # OPTIONAL
      DefaultTaskList             => {
        Name => 'MyName',    # min: 1, max: 256

      },    # OPTIONAL
      DefaultTaskPriority => 'MyTaskPriority',    # OPTIONAL
      DefaultTaskScheduleToCloseTimeout =>
        'MyDurationInSecondsOptional',            # OPTIONAL
      DefaultTaskScheduleToStartTimeout =>
        'MyDurationInSecondsOptional',            # OPTIONAL
      DefaultTaskStartToCloseTimeout =>
        'MyDurationInSecondsOptional',            # OPTIONAL
      Description => 'MyDescription',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/RegisterActivityType>

=head1 ATTRIBUTES


=head2 DefaultTaskHeartbeatTimeout => Str

If set, specifies the default maximum time before which a worker
processing a task of this type must report progress by calling
RecordActivityTaskHeartbeat. If the timeout is exceeded, the activity
task is automatically timed out. This default can be overridden when
scheduling an activity task using the C<ScheduleActivityTask> Decision.
If the activity worker subsequently attempts to record a heartbeat or
returns a result, the activity worker receives an C<UnknownResource>
fault. In this case, Amazon SWF no longer considers the activity task
to be valid; the activity worker should clean up the activity task.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.



=head2 DefaultTaskList => L<Paws::SimpleWorkflow::TaskList>

If set, specifies the default task list to use for scheduling tasks of
this activity type. This default task list is used if a task list isn't
provided when a task is scheduled through the C<ScheduleActivityTask>
Decision.



=head2 DefaultTaskPriority => Str

The default task priority to assign to the activity type. If not
assigned, then C<0> is used. Valid values are integers that range from
Java's C<Integer.MIN_VALUE> (-2147483648) to C<Integer.MAX_VALUE>
(2147483647). Higher numbers indicate higher priority.

For more information about setting task priority, see Setting Task
Priority
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html)
in the I<in the I<Amazon SWF Developer Guide>.>.



=head2 DefaultTaskScheduleToCloseTimeout => Str

If set, specifies the default maximum duration for a task of this
activity type. This default can be overridden when scheduling an
activity task using the C<ScheduleActivityTask> Decision.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.



=head2 DefaultTaskScheduleToStartTimeout => Str

If set, specifies the default maximum duration that a task of this
activity type can wait before being assigned to a worker. This default
can be overridden when scheduling an activity task using the
C<ScheduleActivityTask> Decision.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.



=head2 DefaultTaskStartToCloseTimeout => Str

If set, specifies the default maximum duration that a worker can take
to process tasks of this activity type. This default can be overridden
when scheduling an activity task using the C<ScheduleActivityTask>
Decision.

The duration is specified in seconds, an integer greater than or equal
to C<0>. You can use C<NONE> to specify unlimited duration.



=head2 Description => Str

A textual description of the activity type.



=head2 B<REQUIRED> Domain => Str

The name of the domain in which this activity is to be registered.



=head2 B<REQUIRED> Name => Str

The name of the activity type within the domain.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.



=head2 B<REQUIRED> Version => Str

The version of the activity type.

The activity type consists of the name and version, the combination of
which must be unique within the domain.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterActivityType in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

