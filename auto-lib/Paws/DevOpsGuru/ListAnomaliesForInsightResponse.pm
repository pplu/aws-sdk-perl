
package Paws::DevOpsGuru::ListAnomaliesForInsightResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProactiveAnomalies => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::ProactiveAnomalySummary]');
  has ReactiveAnomalies => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::ReactiveAnomalySummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListAnomaliesForInsightResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 ProactiveAnomalies => ArrayRef[L<Paws::DevOpsGuru::ProactiveAnomalySummary>]

An array of C<ProactiveAnomalySummary> objects that represent the
requested anomalies


=head2 ReactiveAnomalies => ArrayRef[L<Paws::DevOpsGuru::ReactiveAnomalySummary>]

An array of C<ReactiveAnomalySummary> objects that represent the
requested anomalies


=head2 _request_id => Str


=cut

