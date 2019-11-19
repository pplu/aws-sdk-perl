
package Paws::IoT::ListAuditMitigationActionsTasksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_AuditMitigationActionsTaskMetadata/;
  has NextToken => (is => 'ro', isa => Str);
  has Tasks => (is => 'ro', isa => ArrayRef[IoT_AuditMitigationActionsTaskMetadata]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tasks' => 'tasks',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Tasks' => {
                            'class' => 'Paws::IoT::AuditMitigationActionsTaskMetadata',
                            'type' => 'ArrayRef[IoT_AuditMitigationActionsTaskMetadata]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditMitigationActionsTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results.


=head2 Tasks => ArrayRef[IoT_AuditMitigationActionsTaskMetadata]

The collection of audit mitigation tasks that matched the filter
criteria.


=head2 _request_id => Str


=cut

