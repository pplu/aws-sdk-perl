
package Paws::IoT::DescribeAuditMitigationActionsTaskResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_AuditMitigationActionsTaskStatistics IoT_AuditMitigationActionsTaskTarget IoT_AuditCheckToActionsMapping IoT_MitigationAction/;
  has ActionsDefinition => (is => 'ro', isa => ArrayRef[IoT_MitigationAction]);
  has AuditCheckToActionsMapping => (is => 'ro', isa => IoT_AuditCheckToActionsMapping);
  has EndTime => (is => 'ro', isa => Str);
  has StartTime => (is => 'ro', isa => Str);
  has Target => (is => 'ro', isa => IoT_AuditMitigationActionsTaskTarget);
  has TaskStatistics => (is => 'ro', isa => IoT_AuditMitigationActionsTaskStatistics);
  has TaskStatus => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'AuditCheckToActionsMapping' => {
                                                 'class' => 'Paws::IoT::AuditCheckToActionsMapping',
                                                 'type' => 'IoT_AuditCheckToActionsMapping'
                                               },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'Target' => {
                             'class' => 'Paws::IoT::AuditMitigationActionsTaskTarget',
                             'type' => 'IoT_AuditMitigationActionsTaskTarget'
                           },
               'ActionsDefinition' => {
                                        'type' => 'ArrayRef[IoT_MitigationAction]',
                                        'class' => 'Paws::IoT::MitigationAction'
                                      },
               'TaskStatistics' => {
                                     'class' => 'Paws::IoT::AuditMitigationActionsTaskStatistics',
                                     'type' => 'IoT_AuditMitigationActionsTaskStatistics'
                                   },
               'TaskStatus' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'TaskStatus' => 'taskStatus',
                       'TaskStatistics' => 'taskStatistics',
                       'ActionsDefinition' => 'actionsDefinition',
                       'Target' => 'target',
                       'AuditCheckToActionsMapping' => 'auditCheckToActionsMapping',
                       'EndTime' => 'endTime',
                       'StartTime' => 'startTime'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuditMitigationActionsTaskResponse

=head1 ATTRIBUTES


=head2 ActionsDefinition => ArrayRef[IoT_MitigationAction]

Specifies the mitigation actions and their parameters that are applied
as part of this task.


=head2 AuditCheckToActionsMapping => IoT_AuditCheckToActionsMapping

Specifies the mitigation actions that should be applied to specific
audit checks.


=head2 EndTime => Str

The date and time when the task was completed or canceled.


=head2 StartTime => Str

The date and time when the task was started.


=head2 Target => IoT_AuditMitigationActionsTaskTarget

Identifies the findings to which the mitigation actions are applied.
This can be by audit checks, by audit task, or a set of findings.


=head2 TaskStatistics => IoT_AuditMitigationActionsTaskStatistics

Aggregate counts of the results when the mitigation tasks were applied
to the findings for this audit mitigation actions task.


=head2 TaskStatus => Str

The current status of the task.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"CANCELED">
=head2 _request_id => Str


=cut

