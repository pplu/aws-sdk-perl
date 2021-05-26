
package Paws::Connect::ListContactFlowsResponse;
  use Moose;
  has ContactFlowSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ContactFlowSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListContactFlowsResponse

=head1 ATTRIBUTES


=head2 ContactFlowSummaryList => ArrayRef[L<Paws::Connect::ContactFlowSummary>]

Information about the contact flows.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

