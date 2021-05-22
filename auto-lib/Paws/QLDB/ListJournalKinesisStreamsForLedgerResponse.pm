
package Paws::QLDB::ListJournalKinesisStreamsForLedgerResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Streams => (is => 'ro', isa => 'ArrayRef[Paws::QLDB::JournalKinesisStreamDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ListJournalKinesisStreamsForLedgerResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

=over

=item *

If C<NextToken> is empty, the last page of results has been processed
and there are no more results to be retrieved.

=item *

If C<NextToken> is I<not> empty, more results are available. To
retrieve the next page of results, use the value of C<NextToken> in a
subsequent C<ListJournalKinesisStreamsForLedger> call.

=back



=head2 Streams => ArrayRef[L<Paws::QLDB::JournalKinesisStreamDescription>]

The array of QLDB journal stream descriptors that are associated with
the given ledger.


=head2 _request_id => Str


=cut

