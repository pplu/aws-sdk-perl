
package Paws::DataExchange::ListJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::DataExchange::JobEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::DataExchange::JobEntry>]

The jobs listed by the request.


=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.


=head2 _request_id => Str


=cut

