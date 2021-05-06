
package Paws::IoT::DescribeAuditTaskResponse;
  use Moose;
  has AuditDetails => (is => 'ro', isa => 'Paws::IoT::AuditDetails', traits => ['NameInRequest'], request_name => 'auditDetails');
  has ScheduledAuditName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scheduledAuditName');
  has TaskStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskStartTime');
  has TaskStatistics => (is => 'ro', isa => 'Paws::IoT::TaskStatistics', traits => ['NameInRequest'], request_name => 'taskStatistics');
  has TaskStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskStatus');
  has TaskType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuditTaskResponse

=head1 ATTRIBUTES


=head2 AuditDetails => L<Paws::IoT::AuditDetails>

Detailed information about each check performed during this audit.


=head2 ScheduledAuditName => Str

The name of the scheduled audit (only if the audit was a scheduled
audit).


=head2 TaskStartTime => Str

The time the audit started.


=head2 TaskStatistics => L<Paws::IoT::TaskStatistics>

Statistical information about the audit.


=head2 TaskStatus => Str

The status of the audit: one of "IN_PROGRESS", "COMPLETED", "FAILED",
or "CANCELED".

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"CANCELED">
=head2 TaskType => Str

The type of audit: "ON_DEMAND_AUDIT_TASK" or "SCHEDULED_AUDIT_TASK".

Valid values are: C<"ON_DEMAND_AUDIT_TASK">, C<"SCHEDULED_AUDIT_TASK">
=head2 _request_id => Str


=cut

