
package Paws::AppRunner::ListOperationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OperationSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::OperationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ListOperationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that you can pass in a subsequent request to get the next
result page. It's returned in a paginated request.


=head2 OperationSummaryList => ArrayRef[L<Paws::AppRunner::OperationSummary>]

A list of operation summary information records. In a paginated
request, the request returns up to C<MaxResults> records for each call.


=head2 _request_id => Str


=cut

1;