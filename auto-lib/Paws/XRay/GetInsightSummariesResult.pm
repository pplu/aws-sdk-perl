
package Paws::XRay::GetInsightSummariesResult;
  use Moose;
  has InsightSummaries => (is => 'ro', isa => 'ArrayRef[Paws::XRay::InsightSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetInsightSummariesResult

=head1 ATTRIBUTES


=head2 InsightSummaries => ArrayRef[L<Paws::XRay::InsightSummary>]

The summary of each insight within the group matching the provided
filters. The summary contains the InsightID, start and end time, the
root cause service, the root cause and client impact statistics, the
top anomalous services, and the status of the insight.


=head2 NextToken => Str

Pagination token.


=head2 _request_id => Str


=cut

