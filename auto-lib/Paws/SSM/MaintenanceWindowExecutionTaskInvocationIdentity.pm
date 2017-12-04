package Paws::SSM::MaintenanceWindowExecutionTaskInvocationIdentity;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has ExecutionId => (is => 'ro', isa => 'Str');
  has InvocationId => (is => 'ro', isa => 'Str');
  has OwnerInformation => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');
  has TaskExecutionId => (is => 'ro', isa => 'Str');
  has TaskType => (is => 'ro', isa => 'Str');
  has WindowExecutionId => (is => 'ro', isa => 'Str');
  has WindowTargetId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowExecutionTaskInvocationIdentity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowExecutionTaskInvocationIdentity object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., WindowTargetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowExecutionTaskInvocationIdentity object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Describes the information about a task invocation for a particular
target as part of a task execution performed as part of a Maintenance
Window execution.

=head1 ATTRIBUTES


=head2 EndTime => Str

  The time the invocation finished.


=head2 ExecutionId => Str

  The ID of the action performed in the service that actually handled the
task invocation. If the task type is RUN_COMMAND, this value is the
command ID.


=head2 InvocationId => Str

  The ID of the task invocation.


=head2 OwnerInformation => Str

  User-provided value that was specified when the target was registered
with the Maintenance Window. This was also included in any CloudWatch
events raised during the task invocation.


=head2 Parameters => Str

  The parameters that were provided for the invocation when it was
executed.


=head2 StartTime => Str

  The time the invocation started.


=head2 Status => Str

  The status of the task invocation.


=head2 StatusDetails => Str

  The details explaining the status of the task invocation. Only
available for certain Status values.


=head2 TaskExecutionId => Str

  The ID of the specific task execution in the Maintenance Window
execution.


=head2 TaskType => Str

  The task type.


=head2 WindowExecutionId => Str

  The ID of the Maintenance Window execution that ran the task.


=head2 WindowTargetId => Str

  The ID of the target definition in this Maintenance Window the
invocation was performed for.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

