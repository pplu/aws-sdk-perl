
package Paws::LexModels::GetBuiltinIntentsResponse;
  use Moose;
  has Intents => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::BuiltinIntentMetadata]', traits => ['NameInRequest'], request_name => 'intents');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBuiltinIntentsResponse

=head1 ATTRIBUTES


=head2 Intents => ArrayRef[L<Paws::LexModels::BuiltinIntentMetadata>]

An array of C<builtinIntentMetadata> objects, one for each intent in
the response.


=head2 NextToken => Str

A pagination token that fetches the next page of intents. If the
response to this API call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of intents, specify the
pagination token in the next request.


=head2 _request_id => Str


=cut

