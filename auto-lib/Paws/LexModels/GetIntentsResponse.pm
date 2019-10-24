
package Paws::LexModels::GetIntentsResponse;
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

Paws::LexModels::GetIntentsResponse

=head1 ATTRIBUTES


=head2 Intents => ArrayRef[LexModels_IntentMetadata]

An array of C<Intent> objects. For more information, see PutBot.


=head2 NextToken => Str

If the response is truncated, the response includes a pagination token
that you can specify in your next request to fetch the next page of
intents.


=head2 _request_id => Str


=cut

