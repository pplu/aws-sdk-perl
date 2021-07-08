
package Paws::LexModelsV2::ListBotAliasesResponse;
  use Moose;
  has BotAliasSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotAliasSummary]', traits => ['NameInRequest'], request_name => 'botAliasSummaries');
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotAliasesResponse

=head1 ATTRIBUTES


=head2 BotAliasSummaries => ArrayRef[L<Paws::LexModelsV2::BotAliasSummary>]

Summary information for the bot aliases that meet the filter criteria
specified in the request. The length of the list is specified in the
C<maxResults> parameter of the request. If there are more aliases
available, the C<nextToken> field contains a token to get the next page
of results.


=head2 BotId => Str

The identifier of the bot associated with the aliases.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListBotAliases> operation. If the C<nextToken> field
is present, you send the contents as the C<nextToken> parameter of a
C<ListBotAliases> operation request to get the next page of results.


=head2 _request_id => Str


=cut

