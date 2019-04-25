
package Paws::Transcribe::ListVocabulariesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Vocabularies => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::VocabularyInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListVocabulariesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<ListVocabularies> operation returns a page of vocabularies at a
time. The maximum size of the page is set by the C<MaxResults>
parameter. If there are more jobs in the list than the page size,
Amazon Transcribe returns the C<NextPage> token. Include the token in
the next request to the C<ListVocabularies> operation to return in the
next page of jobs.


=head2 Status => Str

The requested vocabulary state.

Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">
=head2 Vocabularies => ArrayRef[L<Paws::Transcribe::VocabularyInfo>]

A list of objects that describe the vocabularies that match the search
criteria in the request.


=head2 _request_id => Str


=cut

1;