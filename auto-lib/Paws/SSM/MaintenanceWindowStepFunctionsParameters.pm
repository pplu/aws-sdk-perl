package Paws::SSM::MaintenanceWindowStepFunctionsParameters;
  use Moose;
  has Input => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowStepFunctionsParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowStepFunctionsParameters object:

  $service_obj->Method(Att1 => { Input => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowStepFunctionsParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Input

=head1 DESCRIPTION

The parameters for a STEP_FUNCTION task.

For information about specifying and updating task parameters, see
RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.

C<LoggingInfo> has been deprecated. To specify an S3 bucket to contain
logs, instead use the C<OutputS3BucketName> and C<OutputS3KeyPrefix>
options in the C<TaskInvocationParameters> structure. For information
about how Systems Manager handles these options for the supported
Maintenance Window task types, see
MaintenanceWindowTaskInvocationParameters.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported Maintenance
Window task types, see MaintenanceWindowTaskInvocationParameters.

For Step Functions tasks, Systems Manager ignores any values specified
for C<TaskParameters> and C<LoggingInfo>.

=head1 ATTRIBUTES


=head2 Input => Str

  The inputs for the STEP_FUNCTION task.


=head2 Name => Str

  The name of the STEP_FUNCTION task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

