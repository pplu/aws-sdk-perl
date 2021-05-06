
package Paws::Connect::ListRoutingProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RoutingProfileSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::RoutingProfileSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListRoutingProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 RoutingProfileSummaryList => ArrayRef[L<Paws::Connect::RoutingProfileSummary>]

Information about the routing profiles.


=head2 _request_id => Str


=cut

