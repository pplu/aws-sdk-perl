
package Paws::Transcribe::ListLanguageModelsResponse;
  use Moose;
  has Models => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::LanguageModel]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListLanguageModelsResponse

=head1 ATTRIBUTES


=head2 Models => ArrayRef[L<Paws::Transcribe::LanguageModel>]

A list of objects containing information about custom language models.


=head2 NextToken => Str

The operation returns a page of jobs at a time. The maximum size of the
list is set by the MaxResults parameter. If there are more language
models in the list than the page size, Amazon Transcribe returns the
C<NextPage> token. Include the token in the next request to the
operation to return the next page of language models.


=head2 _request_id => Str


=cut

1;