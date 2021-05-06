
package Paws::IoT::DescribeAuditMitigationActionsTaskResponse;
  use Moose;
  has ActionsDefinition => (is => 'ro', isa => 'ArrayRef[Paws::IoT::MitigationAction]', traits => ['NameInRequest'], request_name => 'actionsDefinition');
  has AuditCheckToActionsMapping => (is => 'ro', isa => 'Paws::IoT::AuditCheckToActionsMapping', traits => ['NameInRequest'], request_name => 'auditCheckToActionsMapping');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Target => (is => 'ro', isa => 'Paws::IoT::AuditMitigationActionsTaskTarget', traits => ['NameInRequest'], request_name => 'target');
  has TaskStatistics => (is => 'ro', isa => 'Paws::IoT::AuditMitigationActionsTaskStatistics', traits => ['NameInRequest'], request_name => 'taskStatistics');
  has TaskStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuditMitigationActionsTaskResponse

=head1 ATTRIBUTES


=head2 ActionsDefinition => ArrayRef[L<Paws::IoT::MitigationAction>]

Specifies the mitigation actions and their parameters that are applied
as part of this task.


=head2 AuditCheckToActionsMapping => L<Paws::IoT::AuditCheckToActionsMapping>

Specifies the mitigation actions that should be applied to specific
audit checks.


=head2 EndTime => Str

The date and time when the task was completed or canceled.


=head2 StartTime => Str

The date and time when the task was started.


=head2 Target => L<Paws::IoT::AuditMitigationActionsTaskTarget>

Identifies the findings to which the mitigation actions are applied.
This can be by audit checks, by audit task, or a set of findings.


=head2 TaskStatistics => L<Paws::IoT::AuditMitigationActionsTaskStatistics>

Aggregate counts of the results when the mitigation tasks were applied
to the findings for this audit mitigation actions task.


=head2 TaskStatus => Str

The current status of the task.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"CANCELED">
=head2 _request_id => Str


=cut

