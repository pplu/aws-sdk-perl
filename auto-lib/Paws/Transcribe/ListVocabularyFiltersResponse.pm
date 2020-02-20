
package Paws::Transcribe::ListVocabularyFiltersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VocabularyFilters => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::VocabularyFilterInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListVocabularyFiltersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<ListVocabularyFilters> operation returns a page of collections at
a time. The maximum size of the page is set by the C<MaxResults>
parameter. If there are more jobs in the list than the page size,
Amazon Transcribe returns the C<NextPage> token. Include the token in
the next request to the C<ListVocabularyFilters> operation to return in
the next page of jobs.


=head2 VocabularyFilters => ArrayRef[L<Paws::Transcribe::VocabularyFilterInfo>]

The list of vocabulary filters. It will contain at most C<MaxResults>
number of filters. If there are more filters, call the
C<ListVocabularyFilters> operation again with the C<NextToken>
parameter in the request set to the value of the C<NextToken> field in
the response.


=head2 _request_id => Str


=cut

1;