
package Paws::IoT::ListScheduledAuditsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_ScheduledAuditMetadata/;
  has NextToken => (is => 'ro', isa => Str);
  has ScheduledAudits => (is => 'ro', isa => ArrayRef[IoT_ScheduledAuditMetadata]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ScheduledAudits' => {
                                      'class' => 'Paws::IoT::ScheduledAuditMetadata',
                                      'type' => 'ArrayRef[IoT_ScheduledAuditMetadata]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ScheduledAudits' => 'scheduledAudits'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListScheduledAuditsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 ScheduledAudits => ArrayRef[IoT_ScheduledAuditMetadata]

The list of scheduled audits.


=head2 _request_id => Str


=cut

