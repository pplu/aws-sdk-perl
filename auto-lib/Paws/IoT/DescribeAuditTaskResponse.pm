
package Paws::IoT::DescribeAuditTaskResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_TaskStatistics IoT_AuditDetails/;
  has AuditDetails => (is => 'ro', isa => IoT_AuditDetails);
  has ScheduledAuditName => (is => 'ro', isa => Str);
  has TaskStartTime => (is => 'ro', isa => Str);
  has TaskStatistics => (is => 'ro', isa => IoT_TaskStatistics);
  has TaskStatus => (is => 'ro', isa => Str);
  has TaskType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskStatistics' => {
                                     'class' => 'Paws::IoT::TaskStatistics',
                                     'type' => 'IoT_TaskStatistics'
                                   },
               'ScheduledAuditName' => {
                                         'type' => 'Str'
                                       },
               'TaskStatus' => {
                                 'type' => 'Str'
                               },
               'AuditDetails' => {
                                   'class' => 'Paws::IoT::AuditDetails',
                                   'type' => 'IoT_AuditDetails'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TaskStartTime' => {
                                    'type' => 'Str'
                                  },
               'TaskType' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'TaskStatistics' => 'taskStatistics',
                       'ScheduledAuditName' => 'scheduledAuditName',
                       'TaskStatus' => 'taskStatus',
                       'AuditDetails' => 'auditDetails',
                       'TaskStartTime' => 'taskStartTime',
                       'TaskType' => 'taskType'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuditTaskResponse

=head1 ATTRIBUTES


=head2 AuditDetails => IoT_AuditDetails

Detailed information about each check performed during this audit.


=head2 ScheduledAuditName => Str

The name of the scheduled audit (only if the audit was a scheduled
audit).


=head2 TaskStartTime => Str

The time the audit started.


=head2 TaskStatistics => IoT_TaskStatistics

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

