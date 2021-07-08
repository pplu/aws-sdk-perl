
package Paws::Connect::ListQuickConnectsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has QuickConnectSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::QuickConnectSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListQuickConnectsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 QuickConnectSummaryList => ArrayRef[L<Paws::Connect::QuickConnectSummary>]

Information about the quick connects.


=head2 _request_id => Str


=cut

