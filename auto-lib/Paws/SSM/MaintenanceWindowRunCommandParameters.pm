package Paws::SSM::MaintenanceWindowRunCommandParameters;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has DocumentHash => (is => 'ro', isa => 'Str');
  has DocumentHashType => (is => 'ro', isa => 'Str');
  has NotificationConfig => (is => 'ro', isa => 'Paws::SSM::NotificationConfig');
  has OutputS3BucketName => (is => 'ro', isa => 'Str');
  has OutputS3KeyPrefix => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has TimeoutSeconds => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowRunCommandParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowRunCommandParameters object:

  $service_obj->Method(Att1 => { Comment => $value, ..., TimeoutSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowRunCommandParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Comment

=head1 DESCRIPTION

The parameters for a RUN_COMMAND task type.

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

For Run Command tasks, Systems Manager uses specified values for
C<TaskParameters> and C<LoggingInfo> only if no values are specified
for C<TaskInvocationParameters>.

=head1 ATTRIBUTES


=head2 Comment => Str

  Information about the command(s) to execute.


=head2 DocumentHash => Str

  The SHA-256 or SHA-1 hash created by the system when the document was
created. SHA-1 hashes have been deprecated.


=head2 DocumentHashType => Str

  SHA-256 or SHA-1. SHA-1 hashes have been deprecated.


=head2 NotificationConfig => L<Paws::SSM::NotificationConfig>

  Configurations for sending notifications about command status changes
on a per-instance basis.


=head2 OutputS3BucketName => Str

  The name of the Amazon S3 bucket.


=head2 OutputS3KeyPrefix => Str

  The Amazon S3 bucket subfolder.


=head2 Parameters => L<Paws::SSM::Parameters>

  The parameters for the RUN_COMMAND task execution.


=head2 ServiceRoleArn => Str

  The IAM service role to assume during task execution.


=head2 TimeoutSeconds => Int

  If this time is reached and the command has not already started
executing, it doesn't run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

