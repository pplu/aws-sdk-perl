
package Paws::Connect::ListRoutingProfileQueuesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RoutingProfileQueueConfigSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::RoutingProfileQueueConfigSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListRoutingProfileQueuesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 RoutingProfileQueueConfigSummaryList => ArrayRef[L<Paws::Connect::RoutingProfileQueueConfigSummary>]

Information about the routing profiles.


=head2 _request_id => Str


=cut

