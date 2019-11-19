
package Paws::LexModels::GetBuiltinIntentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_BuiltinIntentMetadata/;
  has Intents => (is => 'ro', isa => ArrayRef[LexModels_BuiltinIntentMetadata]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Intents' => {
                              'type' => 'ArrayRef[LexModels_BuiltinIntentMetadata]',
                              'class' => 'Paws::LexModels::BuiltinIntentMetadata'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Intents' => 'intents'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBuiltinIntentsResponse

=head1 ATTRIBUTES


=head2 Intents => ArrayRef[LexModels_BuiltinIntentMetadata]

An array of C<builtinIntentMetadata> objects, one for each intent in
the response.


=head2 NextToken => Str

A pagination token that fetches the next page of intents. If the
response to this API call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of intents, specify the
pagination token in the next request.


=head2 _request_id => Str


=cut

