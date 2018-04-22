
package Paws::SSM::GetMaintenanceWindowExecutionTaskResult;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskExecutionId => (is => 'ro', isa => 'Str');
  has TaskParameters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::MaintenanceWindowTaskParameters]');
  has Type => (is => 'ro', isa => 'Str');
  has WindowExecutionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowExecutionTaskResult

=head1 ATTRIBUTES


=head2 EndTime => Str

The time the task execution completed.


=head2 MaxConcurrency => Str

The defined maximum number of task executions that could be run in
parallel.


=head2 MaxErrors => Str

The defined maximum number of task execution errors allowed before
scheduling of the task execution would have been stopped.


=head2 Priority => Int

The priority of the task.


=head2 ServiceRole => Str

The role that was assumed when executing the task.


=head2 StartTime => Str

The time the task execution started.


=head2 Status => Str

The status of the task.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">, C<"TIMED_OUT">, C<"CANCELLING">, C<"CANCELLED">, C<"SKIPPED_OVERLAPPING">
=head2 StatusDetails => Str

The details explaining the Status. Only available for certain status
values.


=head2 TaskArn => Str

The ARN of the executed task.


=head2 TaskExecutionId => Str

The ID of the specific task execution in the Maintenance Window task
that was retrieved.


=head2 TaskParameters => ArrayRef[L<Paws::SSM::MaintenanceWindowTaskParameters>]

The parameters passed to the task when it was executed.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported Maintenance
Window task types, see MaintenanceWindowTaskInvocationParameters.

The map has the following format:

Key: string, between 1 and 255 characters

Value: an array of strings, each string is between 1 and 255 characters


=head2 Type => Str

The type of task executed.

Valid values are: C<"RUN_COMMAND">, C<"AUTOMATION">, C<"STEP_FUNCTIONS">, C<"LAMBDA">
=head2 WindowExecutionId => Str

The ID of the Maintenance Window execution that includes the task.


=head2 _request_id => Str


=cut

1;