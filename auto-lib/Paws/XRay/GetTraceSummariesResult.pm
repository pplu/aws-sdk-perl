
package Paws::XRay::GetTraceSummariesResult;
  use Moose;
  has ApproximateTime => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has TracesProcessedCount => (is => 'ro', isa => 'Int');
  has TraceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::XRay::TraceSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetTraceSummariesResult

=head1 ATTRIBUTES


=head2 ApproximateTime => Str

The start time of this page of results.


=head2 NextToken => Str

If the requested time frame contained more than one page of results,
you can use this token to retrieve the next page. The first page
contains the most most recent results, closest to the end of the time
frame.


=head2 TracesProcessedCount => Int

The total number of traces processed, including traces that did not
match the specified filter expression.


=head2 TraceSummaries => ArrayRef[L<Paws::XRay::TraceSummary>]

Trace IDs and metadata for traces that were found in the specified time
frame.


=head2 _request_id => Str


=cut

