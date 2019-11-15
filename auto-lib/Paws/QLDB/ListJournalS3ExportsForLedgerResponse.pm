
package Paws::QLDB::ListJournalS3ExportsForLedgerResponse;
  use Moose;
  has JournalS3Exports => (is => 'ro', isa => 'ArrayRef[Paws::QLDB::JournalS3ExportDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ListJournalS3ExportsForLedgerResponse

=head1 ATTRIBUTES


=head2 JournalS3Exports => ArrayRef[L<Paws::QLDB::JournalS3ExportDescription>]

The array of journal export job descriptions that are associated with
the specified ledger.


=head2 NextToken => Str

=over

=item *

If C<NextToken> is empty, then the last page of results has been
processed and there are no more results to be retrieved.

=item *

If C<NextToken> is I<not> empty, then there are more results available.
To retrieve the next page of results, use the value of C<NextToken> in
a subsequent C<ListJournalS3ExportsForLedger> call.

=back



=head2 _request_id => Str


=cut

