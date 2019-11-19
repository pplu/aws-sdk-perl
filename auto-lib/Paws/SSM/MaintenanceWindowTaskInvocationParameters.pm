# Generated from default/object.tt
package Paws::SSM::MaintenanceWindowTaskInvocationParameters;
  use Moo;
  use Types::Standard qw//;
  use Paws::SSM::Types qw/SSM_MaintenanceWindowStepFunctionsParameters SSM_MaintenanceWindowLambdaParameters SSM_MaintenanceWindowAutomationParameters SSM_MaintenanceWindowRunCommandParameters/;
  has Automation => (is => 'ro', isa => SSM_MaintenanceWindowAutomationParameters);
  has Lambda => (is => 'ro', isa => SSM_MaintenanceWindowLambdaParameters);
  has RunCommand => (is => 'ro', isa => SSM_MaintenanceWindowRunCommandParameters);
  has StepFunctions => (is => 'ro', isa => SSM_MaintenanceWindowStepFunctionsParameters);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RunCommand' => {
                                 'type' => 'SSM_MaintenanceWindowRunCommandParameters',
                                 'class' => 'Paws::SSM::MaintenanceWindowRunCommandParameters'
                               },
               'StepFunctions' => {
                                    'type' => 'SSM_MaintenanceWindowStepFunctionsParameters',
                                    'class' => 'Paws::SSM::MaintenanceWindowStepFunctionsParameters'
                                  },
               'Automation' => {
                                 'type' => 'SSM_MaintenanceWindowAutomationParameters',
                                 'class' => 'Paws::SSM::MaintenanceWindowAutomationParameters'
                               },
               'Lambda' => {
                             'class' => 'Paws::SSM::MaintenanceWindowLambdaParameters',
                             'type' => 'SSM_MaintenanceWindowLambdaParameters'
                           }
             }
}
;
    return $Params_map;
  }


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


=head2 Automation => SSM_MaintenanceWindowAutomationParameters

  The parameters for an AUTOMATION task type.


=head2 Lambda => SSM_MaintenanceWindowLambdaParameters

  The parameters for a LAMBDA task type.


=head2 RunCommand => SSM_MaintenanceWindowRunCommandParameters

  The parameters for a RUN_COMMAND task type.


=head2 StepFunctions => SSM_MaintenanceWindowStepFunctionsParameters

  The parameters for a STEP_FUNCTIONS task type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

