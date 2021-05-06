
package Paws::Connect::ListHoursOfOperationsResponse;
  use Moose;
  has HoursOfOperationSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HoursOfOperationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListHoursOfOperationsResponse

=head1 ATTRIBUTES


=head2 HoursOfOperationSummaryList => ArrayRef[L<Paws::Connect::HoursOfOperationSummary>]

Information about the hours of operation.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

