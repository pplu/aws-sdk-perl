
package Paws::SSM::GetMaintenanceWindowExecutionTaskInvocationResult;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has ExecutionId => (is => 'ro', isa => 'Str');
  has InvocationId => (is => 'ro', isa => 'Str');
  has OwnerInformation => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');
  has TaskExecutionId => (is => 'ro', isa => 'Str');
  has TaskType => (is => 'ro', isa => 'Str');
  has WindowExecutionId => (is => 'ro', isa => 'Str');
  has WindowTargetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowExecutionTaskInvocationResult

=head1 ATTRIBUTES


=head2 EndTime => Str

The time that the task finished executing on the target.


=head2 ExecutionId => Str

The execution ID.


=head2 InvocationId => Str

The invocation ID.


=head2 OwnerInformation => Str

User-provided value to be included in any CloudWatch events raised
while running tasks for these targets in this Maintenance Window.


=head2 Parameters => Str

The parameters used at the time that the task executed.


=head2 StartTime => Str

The time that the task started executing on the target.


=head2 Status => Str

The task status for an invocation.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">, C<"TIMED_OUT">, C<"CANCELLING">, C<"CANCELLED">, C<"SKIPPED_OVERLAPPING">
=head2 StatusDetails => Str

The details explaining the status. Details are only available for
certain status values.


=head2 TaskExecutionId => Str

The task execution ID.


=head2 TaskType => Str

Retrieves the task type for a Maintenance Window. Task types include
the following: LAMBDA, STEP_FUNCTION, AUTOMATION, RUN_COMMAND.

Valid values are: C<"RUN_COMMAND">, C<"AUTOMATION">, C<"STEP_FUNCTIONS">, C<"LAMBDA">
=head2 WindowExecutionId => Str

The Maintenance Window execution ID.


=head2 WindowTargetId => Str

The Maintenance Window target ID.


=head2 _request_id => Str


=cut

1;