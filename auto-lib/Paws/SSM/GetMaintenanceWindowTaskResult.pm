
package Paws::SSM::GetMaintenanceWindowTaskResult;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has LoggingInfo => (is => 'ro', isa => 'Paws::SSM::LoggingInfo');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskInvocationParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskInvocationParameters');
  has TaskParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskParameters');
  has TaskType => (is => 'ro', isa => 'Str');
  has WindowId => (is => 'ro', isa => 'Str');
  has WindowTaskId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowTaskResult

=head1 ATTRIBUTES


=head2 Description => Str

The retrieved task description.


=head2 LoggingInfo => L<Paws::SSM::LoggingInfo>

The location in Amazon S3 where the task results are logged.

C<LoggingInfo> has been deprecated. To specify an S3 bucket to contain
logs, instead use the C<OutputS3BucketName> and C<OutputS3KeyPrefix>
options in the C<TaskInvocationParameters> structure. For information
about how Systems Manager handles these options for the supported
Maintenance Window task types, see
MaintenanceWindowTaskInvocationParameters.


=head2 MaxConcurrency => Str

The maximum number of targets allowed to run this task in parallel.


=head2 MaxErrors => Str

The maximum number of errors allowed before the task stops being
scheduled.


=head2 Name => Str

The retrieved task name.


=head2 Priority => Int

The priority of the task when it executes. The lower the number, the
higher the priority. Tasks that have the same priority are scheduled in
parallel.


=head2 ServiceRoleArn => Str

The IAM service role to assume during task execution.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The targets where the task should execute.


=head2 TaskArn => Str

The resource that the task used during execution. For RUN_COMMAND and
AUTOMATION task types, the TaskArn is the Systems Manager Document
name/ARN. For LAMBDA tasks, the value is the function name/ARN. For
STEP_FUNCTION tasks, the value is the state machine ARN.


=head2 TaskInvocationParameters => L<Paws::SSM::MaintenanceWindowTaskInvocationParameters>

The parameters to pass to the task when it executes.


=head2 TaskParameters => L<Paws::SSM::MaintenanceWindowTaskParameters>

The parameters to pass to the task when it executes.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported Maintenance
Window task types, see MaintenanceWindowTaskInvocationParameters.


=head2 TaskType => Str

The type of task to execute.

Valid values are: C<"RUN_COMMAND">, C<"AUTOMATION">, C<"STEP_FUNCTIONS">, C<"LAMBDA">
=head2 WindowId => Str

The retrieved Maintenance Window ID.


=head2 WindowTaskId => Str

The retrieved Maintenance Window task ID.


=head2 _request_id => Str


=cut

1;