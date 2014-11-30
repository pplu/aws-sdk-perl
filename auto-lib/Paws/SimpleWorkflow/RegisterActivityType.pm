
package Paws::SimpleWorkflow::RegisterActivityType {
  use Moose;
  has defaultTaskHeartbeatTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList');
  has defaultTaskScheduleToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskScheduleToStartTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterActivityType');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::RegisterActivityType - Arguments for method RegisterActivityType on Paws::SimpleWorkflow

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterActivityType on the 
Amazon Simple Workflow Service service. Use the attributes of this class
as arguments to method RegisterActivityType.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to RegisterActivityType.

As an example:

  $service_obj->RegisterActivityType(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 defaultTaskHeartbeatTimeout => Str

  

If set, specifies the default maximum time before which a worker
processing a task of this type must report progress by calling
RecordActivityTaskHeartbeat. If the timeout is exceeded, the activity
task is automatically timed out. This default can be overridden when
scheduling an activity task using the C<ScheduleActivityTask> Decision.
If the activity worker subsequently attempts to record a heartbeat or
returns a result, the activity worker receives an C<UnknownResource>
fault. In this case, Amazon SWF no longer considers the activity task
to be valid; the activity worker should clean up the activity task.

The valid values are integers greater than or equal to C<0>. An integer
value can be used to specify the duration in seconds while C<NONE> can
be used to specify unlimited duration.










=head2 defaultTaskList => Paws::SimpleWorkflow::TaskList

  

If set, specifies the default task list to use for scheduling tasks of
this activity type. This default task list is used if a task list is
not provided when a task is scheduled through the
C<ScheduleActivityTask> Decision.










=head2 defaultTaskScheduleToCloseTimeout => Str

  

If set, specifies the default maximum duration for a task of this
activity type. This default can be overridden when scheduling an
activity task using the C<ScheduleActivityTask> Decision.

The valid values are integers greater than or equal to C<0>. An integer
value can be used to specify the duration in seconds while C<NONE> can
be used to specify unlimited duration.










=head2 defaultTaskScheduleToStartTimeout => Str

  

If set, specifies the default maximum duration that a task of this
activity type can wait before being assigned to a worker. This default
can be overridden when scheduling an activity task using the
C<ScheduleActivityTask> Decision.

The valid values are integers greater than or equal to C<0>. An integer
value can be used to specify the duration in seconds while C<NONE> can
be used to specify unlimited duration.










=head2 defaultTaskStartToCloseTimeout => Str

  

If set, specifies the default maximum duration that a worker can take
to process tasks of this activity type. This default can be overridden
when scheduling an activity task using the C<ScheduleActivityTask>
Decision.

The valid values are integers greater than or equal to C<0>. An integer
value can be used to specify the duration in seconds while C<NONE> can
be used to specify unlimited duration.










=head2 description => Str

  

A textual description of the activity type.










=head2 B<REQUIRED> domain => Str

  

The name of the domain in which this activity is to be registered.










=head2 B<REQUIRED> name => Str

  

The name of the activity type within the domain.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not
contain the literal string "arn".










=head2 B<REQUIRED> version => Str

  

The version of the activity type.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not
contain the literal string "arn".












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for RegisterActivityType in Paws::SimpleWorkflow

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

