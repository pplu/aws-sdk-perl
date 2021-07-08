
package Paws::Transcribe::ListMedicalVocabulariesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Vocabularies => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::VocabularyInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListMedicalVocabulariesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<ListMedicalVocabularies> operation returns a page of vocabularies
at a time. You set the maximum number of vocabularies to return on a
page with the C<MaxResults> parameter. If there are more jobs in the
list will fit on a page, Amazon Transcribe Medical returns the
C<NextPage> token. To return the next page of vocabularies, include the
token in the next request to the C<ListMedicalVocabularies> operation .


=head2 Status => Str

The requested vocabulary state.

Valid values are: C<"PENDING">, C<"READY">, C<"FAILED">
=head2 Vocabularies => ArrayRef[L<Paws::Transcribe::VocabularyInfo>]

A list of objects that describe the vocabularies that match your search
criteria.


=head2 _request_id => Str


=cut

1;