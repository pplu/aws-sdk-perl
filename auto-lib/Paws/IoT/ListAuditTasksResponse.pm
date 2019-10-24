
package Paws::IoT::ListAuditTasksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_AuditTaskMetadata/;
  has NextToken => (is => 'ro', isa => Str);
  has Tasks => (is => 'ro', isa => ArrayRef[IoT_AuditTaskMetadata]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tasks' => {
                            'class' => 'Paws::IoT::AuditTaskMetadata',
                            'type' => 'ArrayRef[IoT_AuditTaskMetadata]'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Tasks' => 'tasks',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 Tasks => ArrayRef[IoT_AuditTaskMetadata]

The audits that were performed during the specified time period.


=head2 _request_id => Str


=cut

