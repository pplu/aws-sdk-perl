
package Paws::CostExplorer::GetAnomalySubscriptionsResponse;
  use Moose;
  has AnomalySubscriptions => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::AnomalySubscription]', required => 1);
  has NextPageToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetAnomalySubscriptionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalySubscriptions => ArrayRef[L<Paws::CostExplorer::AnomalySubscription>]

A list of cost anomaly subscriptions that includes the detailed
metadata for each one.


=head2 NextPageToken => Str

The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the
maximum page size.


=head2 _request_id => Str


=cut

1;