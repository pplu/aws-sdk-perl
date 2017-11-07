package Paws::SSM::MaintenanceWindowExecution;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');
  has WindowExecutionId => (is => 'ro', isa => 'Str');
  has WindowId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowExecution object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., WindowId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Describes the information about an execution of a Maintenance Window.

=head1 ATTRIBUTES


=head2 EndTime => Str

  The time the execution finished.


=head2 StartTime => Str

  The time the execution started.


=head2 Status => Str

  The status of the execution.


=head2 StatusDetails => Str

  The details explaining the Status. Only available for certain status
values.


=head2 WindowExecutionId => Str

  The ID of the Maintenance Window execution.


=head2 WindowId => Str

  The ID of the Maintenance Window.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

