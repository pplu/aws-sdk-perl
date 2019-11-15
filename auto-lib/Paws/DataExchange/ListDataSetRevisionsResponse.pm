
package Paws::DataExchange::ListDataSetRevisionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Revisions => (is => 'ro', isa => 'ArrayRef[Paws::DataExchange::RevisionEntry]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListDataSetRevisionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.


=head2 Revisions => ArrayRef[L<Paws::DataExchange::RevisionEntry>]

The asset objects listed by the request.


=head2 _request_id => Str


=cut

