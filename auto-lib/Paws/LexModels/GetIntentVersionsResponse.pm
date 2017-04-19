
package Paws::LexModels::GetIntentVersionsResponse;
  use Moose;
  has Intents => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::IntentMetadata]', traits => ['NameInRequest'], request_name => 'intents');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetIntentVersionsResponse

=head1 ATTRIBUTES


=head2 Intents => ArrayRef[L<Paws::LexModels::IntentMetadata>]

An array of C<IntentMetadata> objects, one for each numbered version of
the intent plus one for the C<$LATEST> version.


=head2 NextToken => Str

A pagination token for fetching the next page of intent versions. If
the response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of versions, specify the
pagination token in the next request.


=head2 _request_id => Str


=cut

