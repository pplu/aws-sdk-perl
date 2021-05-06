
package Paws::QLDB::ListLedgersResponse;
  use Moose;
  has Ledgers => (is => 'ro', isa => 'ArrayRef[Paws::QLDB::LedgerSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ListLedgersResponse

=head1 ATTRIBUTES


=head2 Ledgers => ArrayRef[L<Paws::QLDB::LedgerSummary>]

The array of ledger summaries that are associated with the current AWS
account and Region.


=head2 NextToken => Str

A pagination token, indicating whether there are more results
available:

=over

=item *

If C<NextToken> is empty, then the last page of results has been
processed and there are no more results to be retrieved.

=item *

If C<NextToken> is I<not> empty, then there are more results available.
To retrieve the next page of results, use the value of C<NextToken> in
a subsequent C<ListLedgers> call.

=back



=head2 _request_id => Str


=cut

