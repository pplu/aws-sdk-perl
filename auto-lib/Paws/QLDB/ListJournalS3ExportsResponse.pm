
package Paws::QLDB::ListJournalS3ExportsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::QLDB::Types qw/QLDB_JournalS3ExportDescription/;
  has JournalS3Exports => (is => 'ro', isa => ArrayRef[QLDB_JournalS3ExportDescription]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'JournalS3Exports' => {
                                       'class' => 'Paws::QLDB::JournalS3ExportDescription',
                                       'type' => 'ArrayRef[QLDB_JournalS3ExportDescription]'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ListJournalS3ExportsResponse

=head1 ATTRIBUTES


=head2 JournalS3Exports => ArrayRef[QLDB_JournalS3ExportDescription]

The array of journal export job descriptions for all ledgers that are
associated with the current AWS account and Region.


=head2 NextToken => Str

=over

=item *

If C<NextToken> is empty, then the last page of results has been
processed and there are no more results to be retrieved.

=item *

If C<NextToken> is I<not> empty, then there are more results available.
To retrieve the next page of results, use the value of C<NextToken> in
a subsequent C<ListJournalS3Exports> call.

=back



=head2 _request_id => Str


=cut

