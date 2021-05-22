
package Paws::SSM::UpdateMaintenanceWindowTask;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has LoggingInfo => (is => 'ro', isa => 'Paws::SSM::LoggingInfo');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has Replace => (is => 'ro', isa => 'Bool');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskInvocationParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskInvocationParameters');
  has TaskParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskParameters');
  has WindowId => (is => 'ro', isa => 'Str', required => 1);
  has WindowTaskId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceWindowTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateMaintenanceWindowTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateMaintenanceWindowTask - Arguments for method UpdateMaintenanceWindowTask on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMaintenanceWindowTask on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateMaintenanceWindowTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMaintenanceWindowTask.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateMaintenanceWindowTaskResult = $ssm->UpdateMaintenanceWindowTask(
      WindowId     => 'MyMaintenanceWindowId',
      WindowTaskId => 'MyMaintenanceWindowTaskId',
      Description  => 'MyMaintenanceWindowDescription',    # OPTIONAL
      LoggingInfo  => {
        S3BucketName => 'MyS3BucketName',                  # min: 3, max: 63
        S3Region     => 'MyS3Region',                      # min: 3, max: 20
        S3KeyPrefix  => 'MyS3KeyPrefix',                   # max: 500; OPTIONAL
      },    # OPTIONAL
      MaxConcurrency => 'MyMaxConcurrency',           # OPTIONAL
      MaxErrors      => 'MyMaxErrors',                # OPTIONAL
      Name           => 'MyMaintenanceWindowName',    # OPTIONAL
      Priority       => 1,                            # OPTIONAL
      Replace        => 1,                            # OPTIONAL
      ServiceRoleArn => 'MyServiceRole',              # OPTIONAL
      Targets        => [
        {
          Key    => 'MyTargetKey',               # min: 1, max: 163; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      TaskArn                  => 'MyMaintenanceWindowTaskArn',    # OPTIONAL
      TaskInvocationParameters => {
        Automation => {
          DocumentVersion => 'MyDocumentVersion',                  # OPTIONAL
          Parameters      => {
            'MyAutomationParameterKey' => [
              'MyAutomationParameterValue', ...    # min: 1, max: 512
            ],    # key: min: 1, max: 50, value: max: 50
          },    # min: 1, max: 200; OPTIONAL
        },    # OPTIONAL
        Lambda => {
          ClientContext => 'MyMaintenanceWindowLambdaClientContext'
          ,    # min: 1, max: 8000; OPTIONAL
          Payload => 'BlobMaintenanceWindowLambdaPayload', # max: 4096; OPTIONAL
          Qualifier =>
            'MyMaintenanceWindowLambdaQualifier',   # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        RunCommand => {
          CloudWatchOutputConfig => {
            CloudWatchLogGroupName =>
              'MyCloudWatchLogGroupName',    # min: 1, max: 512; OPTIONAL
            CloudWatchOutputEnabled => 1,    # OPTIONAL
          },    # OPTIONAL
          Comment          => 'MyComment',      # max: 100; OPTIONAL
          DocumentHash     => 'MyDocumentHash', # max: 256; OPTIONAL
          DocumentHashType => 'Sha256',         # values: Sha256, Sha1; OPTIONAL
          DocumentVersion    => 'MyDocumentVersion',    # OPTIONAL
          NotificationConfig => {
            NotificationArn    => 'MyNotificationArn',    # OPTIONAL
            NotificationEvents => [
              'All',
              ... # values: All, InProgress, Success, TimedOut, Cancelled, Failed
            ],    # OPTIONAL
            NotificationType =>
              'Command',    # values: Command, Invocation; OPTIONAL
          },    # OPTIONAL
          OutputS3BucketName => 'MyS3BucketName',    # min: 3, max: 63
          OutputS3KeyPrefix  => 'MyS3KeyPrefix',     # max: 500; OPTIONAL
          Parameters => { 'MyParameterName' => [ 'MyParameterValue', ... ], }
          ,                                          # OPTIONAL
          ServiceRoleArn => 'MyServiceRole',
          TimeoutSeconds => 1,                 # min: 30, max: 2592000; OPTIONAL
        },    # OPTIONAL
        StepFunctions => {
          Input =>
            'MyMaintenanceWindowStepFunctionsInput',    # max: 4096; OPTIONAL
          Name =>
            'MyMaintenanceWindowStepFunctionsName',  # min: 1, max: 80; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      TaskParameters => {
        'MyMaintenanceWindowTaskParameterName' => {
          Values => [
            'MyMaintenanceWindowTaskParameterValue', ...    # min: 1, max: 255
          ],                                                # OPTIONAL
        },    # key: min: 1, max: 255
      },    # OPTIONAL
    );

    # Results:
    my $Description    = $UpdateMaintenanceWindowTaskResult->Description;
    my $LoggingInfo    = $UpdateMaintenanceWindowTaskResult->LoggingInfo;
    my $MaxConcurrency = $UpdateMaintenanceWindowTaskResult->MaxConcurrency;
    my $MaxErrors      = $UpdateMaintenanceWindowTaskResult->MaxErrors;
    my $Name           = $UpdateMaintenanceWindowTaskResult->Name;
    my $Priority       = $UpdateMaintenanceWindowTaskResult->Priority;
    my $ServiceRoleArn = $UpdateMaintenanceWindowTaskResult->ServiceRoleArn;
    my $Targets        = $UpdateMaintenanceWindowTaskResult->Targets;
    my $TaskArn        = $UpdateMaintenanceWindowTaskResult->TaskArn;
    my $TaskInvocationParameters =
      $UpdateMaintenanceWindowTaskResult->TaskInvocationParameters;
    my $TaskParameters = $UpdateMaintenanceWindowTaskResult->TaskParameters;
    my $WindowId       = $UpdateMaintenanceWindowTaskResult->WindowId;
    my $WindowTaskId   = $UpdateMaintenanceWindowTaskResult->WindowTaskId;

    # Returns a L<Paws::SSM::UpdateMaintenanceWindowTaskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateMaintenanceWindowTask>

=head1 ATTRIBUTES


=head2 Description => Str

The new task description to specify.



=head2 LoggingInfo => L<Paws::SSM::LoggingInfo>

The new logging location in Amazon S3 to specify.

C<LoggingInfo> has been deprecated. To specify an S3 bucket to contain
logs, instead use the C<OutputS3BucketName> and C<OutputS3KeyPrefix>
options in the C<TaskInvocationParameters> structure. For information
about how Systems Manager handles these options for the supported
maintenance window task types, see
MaintenanceWindowTaskInvocationParameters.



=head2 MaxConcurrency => Str

The new C<MaxConcurrency> value you want to specify. C<MaxConcurrency>
is the number of targets that are allowed to run this task in parallel.

For maintenance window tasks without a target specified, you cannot
supply a value for this option. Instead, the system inserts a
placeholder value of C<1>, which may be reported in the response to
this command. This value does not affect the running of your task and
can be ignored.



=head2 MaxErrors => Str

The new C<MaxErrors> value to specify. C<MaxErrors> is the maximum
number of errors that are allowed before the task stops being
scheduled.

For maintenance window tasks without a target specified, you cannot
supply a value for this option. Instead, the system inserts a
placeholder value of C<1>, which may be reported in the response to
this command. This value does not affect the running of your task and
can be ignored.



=head2 Name => Str

The new task name to specify.



=head2 Priority => Int

The new task priority to specify. The lower the number, the higher the
priority. Tasks that have the same priority are scheduled in parallel.



=head2 Replace => Bool

If True, then all fields that are required by the
RegisterTaskWithMaintenanceWindow action are also required for this API
request. Optional fields that are not specified are set to null.



=head2 ServiceRoleArn => Str

The ARN of the IAM service role for Systems Manager to assume when
running a maintenance window task. If you do not specify a service role
ARN, Systems Manager uses your account's service-linked role. If no
service-linked role for Systems Manager exists in your account, it is
created when you run C<RegisterTaskWithMaintenanceWindow>.

For more information, see the following topics in the in the I<AWS
Systems Manager User Guide>:

=over

=item *

Using service-linked roles for Systems Manager
(https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions)

=item *

Should I use a service-linked role or a custom service role to run
maintenance window tasks?
(https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role)

=back




=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The targets (either instances or tags) to modify. Instances are
specified using Key=instanceids,Values=instanceID_1,instanceID_2. Tags
are specified using Key=tag_name,Values=tag_value.

One or more targets must be specified for maintenance window Run
Command-type tasks. Depending on the task, targets are optional for
other maintenance window task types (Automation, AWS Lambda, and AWS
Step Functions). For more information about running tasks that do not
specify targets, see Registering maintenance window tasks without
targets
(https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html)
in the I<AWS Systems Manager User Guide>.



=head2 TaskArn => Str

The task ARN to modify.



=head2 TaskInvocationParameters => L<Paws::SSM::MaintenanceWindowTaskInvocationParameters>

The parameters that the task should use during execution. Populate only
the fields that match the task type. All other fields should be empty.

When you update a maintenance window task that has options specified in
C<TaskInvocationParameters>, you must provide again all the
C<TaskInvocationParameters> values that you want to retain. The values
you do not specify again are removed. For example, suppose that when
you registered a Run Command task, you specified
C<TaskInvocationParameters> values for C<Comment>,
C<NotificationConfig>, and C<OutputS3BucketName>. If you update the
maintenance window task and specify only a different
C<OutputS3BucketName> value, the values for C<Comment> and
C<NotificationConfig> are removed.



=head2 TaskParameters => L<Paws::SSM::MaintenanceWindowTaskParameters>

The parameters to modify.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported maintenance
window task types, see MaintenanceWindowTaskInvocationParameters.

The map has the following format:

Key: string, between 1 and 255 characters

Value: an array of strings, each string is between 1 and 255 characters



=head2 B<REQUIRED> WindowId => Str

The maintenance window ID that contains the task to modify.



=head2 B<REQUIRED> WindowTaskId => Str

The task ID to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMaintenanceWindowTask in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

