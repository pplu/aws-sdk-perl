
package Paws::Connect::ListContactFlowsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Connect::Types qw/Connect_ContactFlowSummary/;
  has ContactFlowSummaryList => (is => 'ro', isa => ArrayRef[Connect_ContactFlowSummary]);
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
               'ContactFlowSummaryList' => {
                                             'class' => 'Paws::Connect::ContactFlowSummary',
                                             'type' => 'ArrayRef[Connect_ContactFlowSummary]'
                                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListContactFlowsResponse

=head1 ATTRIBUTES


=head2 ContactFlowSummaryList => ArrayRef[Connect_ContactFlowSummary]

Information about the contact flows.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

