
package Paws::IoT::ListAuditMitigationActionsExecutionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_AuditMitigationActionExecutionMetadata/;
  has ActionsExecutions => (is => 'ro', isa => ArrayRef[IoT_AuditMitigationActionExecutionMetadata]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ActionsExecutions' => {
                                        'class' => 'Paws::IoT::AuditMitigationActionExecutionMetadata',
                                        'type' => 'ArrayRef[IoT_AuditMitigationActionExecutionMetadata]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ActionsExecutions' => 'actionsExecutions',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditMitigationActionsExecutionsResponse

=head1 ATTRIBUTES


=head2 ActionsExecutions => ArrayRef[IoT_AuditMitigationActionExecutionMetadata]

A set of task execution results based on the input parameters. Details
include the mitigation action applied, start time, and task status.


=head2 NextToken => Str

The token for the next set of results.


=head2 _request_id => Str


=cut

