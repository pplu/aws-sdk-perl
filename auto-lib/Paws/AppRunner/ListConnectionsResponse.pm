
package Paws::AppRunner::ListConnectionsResponse;
  use Moose;
  has ConnectionSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::ConnectionSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ListConnectionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionSummaryList => ArrayRef[L<Paws::AppRunner::ConnectionSummary>]

A list of summary information records for connections. In a paginated
request, the request returns up to C<MaxResults> records for each call.


=head2 NextToken => Str

The token that you can pass in a subsequent request to get the next
result page. Returned in a paginated request.


=head2 _request_id => Str


=cut

1;