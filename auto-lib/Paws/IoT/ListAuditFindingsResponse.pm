
package Paws::IoT::ListAuditFindingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_AuditFinding/;
  has Findings => (is => 'ro', isa => ArrayRef[IoT_AuditFinding]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Findings' => {
                               'class' => 'Paws::IoT::AuditFinding',
                               'type' => 'ArrayRef[IoT_AuditFinding]'
                             }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Findings' => 'findings'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditFindingsResponse

=head1 ATTRIBUTES


=head2 Findings => ArrayRef[IoT_AuditFinding]

The findings (results) of the audit.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 _request_id => Str


=cut

