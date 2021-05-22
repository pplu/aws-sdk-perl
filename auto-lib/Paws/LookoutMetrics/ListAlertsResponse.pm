
package Paws::LookoutMetrics::ListAlertsResponse;
  use Moose;
  has AlertSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::AlertSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::ListAlertsResponse

=head1 ATTRIBUTES


=head2 AlertSummaryList => ArrayRef[L<Paws::LookoutMetrics::AlertSummary>]

Contains information about an alert.


=head2 NextToken => Str

If the response is truncated, the service returns this token. To
retrieve the next set of results, use this token in the next request.


=head2 _request_id => Str


=cut

