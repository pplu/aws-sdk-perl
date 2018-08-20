
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

A string returned in the response. Use the value returned in the
response as the value of the NextToken in a subsequent request to
retrieve the next set of results.


=head2 RoutingProfileSummaryList => ArrayRef[L<Paws::Connect::RoutingProfileSummary>]

An array of C<RoutingProfileSummary> objects that include the ARN, Id,
and Name of the routing profile.


=head2 _request_id => Str


=cut

