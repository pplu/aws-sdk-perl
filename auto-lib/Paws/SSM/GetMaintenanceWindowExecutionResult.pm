
package Paws::SSM::GetMaintenanceWindowExecutionResult;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');
  has TaskIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WindowExecutionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowExecutionResult

=head1 ATTRIBUTES


=head2 EndTime => Str

The time the Maintenance Window finished executing.


=head2 StartTime => Str

The time the Maintenance Window started executing.


=head2 Status => Str

The status of the Maintenance Window execution.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">, C<"TIMED_OUT">, C<"CANCELLING">, C<"CANCELLED">, C<"SKIPPED_OVERLAPPING">
=head2 StatusDetails => Str

The details explaining the Status. Only available for certain status
values.


=head2 TaskIds => ArrayRef[Str|Undef]

The ID of the task executions from the Maintenance Window execution.


=head2 WindowExecutionId => Str

The ID of the Maintenance Window execution.


=head2 _request_id => Str


=cut

1;