
package Paws::SSM::RegisterTaskWithMaintenanceWindow;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LoggingInfo => (is => 'ro', isa => 'Paws::SSM::LoggingInfo');
  has MaxConcurrency => (is => 'ro', isa => 'Str', required => 1);
  has MaxErrors => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]', required => 1);
  has TaskArn => (is => 'ro', isa => 'Str', required => 1);
  has TaskInvocationParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskInvocationParameters');
  has TaskParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskParameters');
  has TaskType => (is => 'ro', isa => 'Str', required => 1);
  has WindowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterTaskWithMaintenanceWindow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::RegisterTaskWithMaintenanceWindowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::RegisterTaskWithMaintenanceWindow - Arguments for method RegisterTaskWithMaintenanceWindow on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterTaskWithMaintenanceWindow on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method RegisterTaskWithMaintenanceWindow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterTaskWithMaintenanceWindow.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $RegisterTaskWithMaintenanceWindowResult =
      $ssm->RegisterTaskWithMaintenanceWindow(
      MaxConcurrency => 'MyMaxConcurrency',
      MaxErrors      => 'MyMaxErrors',
      Targets        => [
        {
          Key => 'MyTargetKey',                  # min: 1, max: 128; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],
      TaskArn     => 'MyMaintenanceWindowTaskArn',
      TaskType    => 'RUN_COMMAND',
      WindowId    => 'MyMaintenanceWindowId',
      ClientToken => 'MyClientToken',                     # OPTIONAL
      Description => 'MyMaintenanceWindowDescription',    # OPTIONAL
      LoggingInfo => {
        S3BucketName => 'MyS3BucketName',                 # min: 3, max: 63
        S3Region     => 'MyS3Region',                     # min: 3, max: 20
        S3KeyPrefix  => 'MyS3KeyPrefix',                  # max: 500; OPTIONAL
      },    # OPTIONAL
      Name                     => 'MyMaintenanceWindowName',    # OPTIONAL
      Priority                 => 1,                            # OPTIONAL
      ServiceRoleArn           => 'MyServiceRole',              # OPTIONAL
      TaskInvocationParameters => {
        Automation => {
          DocumentVersion => 'MyDocumentVersion',               # OPTIONAL
          Parameters      => {
            'MyAutomationParameterKey' => [
              'MyAutomationParameterValue', ...    # min: 1, max: 512
            ],    # key: min: 1, max: 30, value: max: 10
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
          Comment          => 'MyComment',      # max: 100; OPTIONAL
          DocumentHash     => 'MyDocumentHash', # max: 256; OPTIONAL
          DocumentHashType => 'Sha256',         # values: Sha256, Sha1; OPTIONAL
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
    my $WindowTaskId = $RegisterTaskWithMaintenanceWindowResult->WindowTaskId;

    # Returns a L<Paws::SSM::RegisterTaskWithMaintenanceWindowResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/RegisterTaskWithMaintenanceWindow>

=head1 ATTRIBUTES


=head2 ClientToken => Str

User-provided idempotency token.



=head2 Description => Str

An optional description for the task.



=head2 LoggingInfo => L<Paws::SSM::LoggingInfo>

A structure containing information about an Amazon S3 bucket to write
instance-level logs to.

C<LoggingInfo> has been deprecated. To specify an S3 bucket to contain
logs, instead use the C<OutputS3BucketName> and C<OutputS3KeyPrefix>
options in the C<TaskInvocationParameters> structure. For information
about how Systems Manager handles these options for the supported
Maintenance Window task types, see
MaintenanceWindowTaskInvocationParameters.



=head2 B<REQUIRED> MaxConcurrency => Str

The maximum number of targets this task can be run for in parallel.



=head2 B<REQUIRED> MaxErrors => Str

The maximum number of errors allowed before this task stops being
scheduled.



=head2 Name => Str

An optional name for the task.



=head2 Priority => Int

The priority of the task in the Maintenance Window, the lower the
number the higher the priority. Tasks in a Maintenance Window are
scheduled in priority order with tasks that have the same priority
scheduled in parallel.



=head2 ServiceRoleArn => Str

The role to assume when running the Maintenance Window task.

If you do not specify a service role ARN, Systems Manager will use your
account's service-linked role for Systems Manager by default. If no
service-linked role for Systems Manager exists in your account, it will
be created when you run C<RegisterTaskWithMaintenanceWindow> without
specifying a service role ARN.

For more information, see Service-Linked Role Permissions for Systems
Manager
(http://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions)
and Should I Use a Service-Linked Role or a Custom Service Role to Run
Maintenance Window Tasks?
(http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role)
in the I<AWS Systems Manager User Guide>.



=head2 B<REQUIRED> Targets => ArrayRef[L<Paws::SSM::Target>]

The targets (either instances or Maintenance Window targets).

Specify instances using the following format:

C<Key=InstanceIds,Values=E<lt>instance-id-1E<gt>,E<lt>instance-id-2E<gt>>

Specify Maintenance Window targets using the following format:

C<Key=E<lt>WindowTargetIdsE<gt>,Values=E<lt>window-target-id-1E<gt>,E<lt>window-target-id-2E<gt>>



=head2 B<REQUIRED> TaskArn => Str

The ARN of the task to execute



=head2 TaskInvocationParameters => L<Paws::SSM::MaintenanceWindowTaskInvocationParameters>

The parameters that the task should use during execution. Populate only
the fields that match the task type. All other fields should be empty.



=head2 TaskParameters => L<Paws::SSM::MaintenanceWindowTaskParameters>

The parameters that should be passed to the task when it is executed.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported Maintenance
Window task types, see MaintenanceWindowTaskInvocationParameters.



=head2 B<REQUIRED> TaskType => Str

The type of task being registered.

Valid values are: C<"RUN_COMMAND">, C<"AUTOMATION">, C<"STEP_FUNCTIONS">, C<"LAMBDA">

=head2 B<REQUIRED> WindowId => Str

The ID of the Maintenance Window the task should be added to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterTaskWithMaintenanceWindow in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

