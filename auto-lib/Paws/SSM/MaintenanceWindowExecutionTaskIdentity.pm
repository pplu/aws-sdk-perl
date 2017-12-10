package Paws::SSM::MaintenanceWindowExecutionTaskIdentity;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskExecutionId => (is => 'ro', isa => 'Str');
  has TaskType => (is => 'ro', isa => 'Str');
  has WindowExecutionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowExecutionTaskIdentity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowExecutionTaskIdentity object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., WindowExecutionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowExecutionTaskIdentity object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Information about a task execution performed as part of a Maintenance
Window execution.

=head1 ATTRIBUTES


=head2 EndTime => Str

  The time the task execution finished.


=head2 StartTime => Str

  The time the task execution started.


=head2 Status => Str

  The status of the task execution.


=head2 StatusDetails => Str

  The details explaining the status of the task execution. Only available
for certain status values.


=head2 TaskArn => Str

  The ARN of the executed task.


=head2 TaskExecutionId => Str

  The ID of the specific task execution in the Maintenance Window
execution.


=head2 TaskType => Str

  The type of executed task.


=head2 WindowExecutionId => Str

  The ID of the Maintenance Window execution that ran the task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

