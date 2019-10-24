
package Paws::LexModels::GetBotAliasesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_BotAliasMetadata/;
  has BotAliases => (is => 'ro', isa => ArrayRef[LexModels_BotAliasMetadata]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BotAliases' => {
                                 'class' => 'Paws::LexModels::BotAliasMetadata',
                                 'type' => 'ArrayRef[LexModels_BotAliasMetadata]'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotAliasesResponse

=head1 ATTRIBUTES


=head2 BotAliases => ArrayRef[LexModels_BotAliasMetadata]

An array of C<BotAliasMetadata> objects, each describing a bot alias.


=head2 NextToken => Str

A pagination token for fetching next page of aliases. If the response
to this call is truncated, Amazon Lex returns a pagination token in the
response. To fetch the next page of aliases, specify the pagination
token in the next request.


=head2 _request_id => Str


=cut

