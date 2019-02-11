
package Paws::XRay::GetSamplingStatisticSummariesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SamplingStatisticSummaries => (is => 'ro', isa => 'ArrayRef[Paws::XRay::SamplingStatisticSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetSamplingStatisticSummariesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. Not used.


=head2 SamplingStatisticSummaries => ArrayRef[L<Paws::XRay::SamplingStatisticSummary>]

Information about the number of requests instrumented for each sampling
rule.


=head2 _request_id => Str


=cut

