package Paws::SSM::MaintenanceWindowTaskInvocationParameters;
  use Moose;
  has Automation => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowAutomationParameters');
  has Lambda => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowLambdaParameters');
  has RunCommand => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowRunCommandParameters');
  has StepFunctions => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowStepFunctionsParameters');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowTaskInvocationParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowTaskInvocationParameters object:

  $service_obj->Method(Att1 => { Automation => $value, ..., StepFunctions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowTaskInvocationParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Automation

=head1 DESCRIPTION

The parameters for task execution.

=head1 ATTRIBUTES


=head2 Automation => L<Paws::SSM::MaintenanceWindowAutomationParameters>

  The parameters for an AUTOMATION task type.


=head2 Lambda => L<Paws::SSM::MaintenanceWindowLambdaParameters>

  The parameters for a LAMBDA task type.


=head2 RunCommand => L<Paws::SSM::MaintenanceWindowRunCommandParameters>

  The parameters for a RUN_COMMAND task type.


=head2 StepFunctions => L<Paws::SSM::MaintenanceWindowStepFunctionsParameters>

  The parameters for a STEP_FUNCTION task type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

