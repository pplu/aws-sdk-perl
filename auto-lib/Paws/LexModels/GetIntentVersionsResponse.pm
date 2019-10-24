
package Paws::LexModels::GetIntentVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_IntentMetadata/;
  has Intents => (is => 'ro', isa => ArrayRef[LexModels_IntentMetadata]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Intents' => {
                              'class' => 'Paws::LexModels::IntentMetadata',
                              'type' => 'ArrayRef[LexModels_IntentMetadata]'
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

Paws::LexModels::GetIntentVersionsResponse

=head1 ATTRIBUTES


=head2 Intents => ArrayRef[LexModels_IntentMetadata]

An array of C<IntentMetadata> objects, one for each numbered version of
the intent plus one for the C<$LATEST> version.


=head2 NextToken => Str

A pagination token for fetching the next page of intent versions. If
the response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of versions, specify the
pagination token in the next request.


=head2 _request_id => Str


=cut

