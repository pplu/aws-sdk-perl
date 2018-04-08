package Paws::SSM::MaintenanceWindowLambdaParameters;
  use Moose;
  has ClientContext => (is => 'ro', isa => 'Str');
  has Payload => (is => 'ro', isa => 'Str');
  has Qualifier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowLambdaParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowLambdaParameters object:

  $service_obj->Method(Att1 => { ClientContext => $value, ..., Qualifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowLambdaParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientContext

=head1 DESCRIPTION

The parameters for a LAMBDA task type.

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

For Lambda tasks, Systems Manager ignores any values specified for
TaskParameters and LoggingInfo.

=head1 ATTRIBUTES


=head2 ClientContext => Str

  Pass client-specific information to the Lambda function that you are
invoking. You can then process the client information in your Lambda
function as you choose through the context variable.


=head2 Payload => Str

  JSON to provide to your Lambda function as input.


=head2 Qualifier => Str

  (Optional) Specify a Lambda function version or alias name. If you
specify a function version, the action uses the qualified function ARN
to invoke a specific Lambda function. If you specify an alias name, the
action uses the alias ARN to invoke the Lambda function version to
which the alias points.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

