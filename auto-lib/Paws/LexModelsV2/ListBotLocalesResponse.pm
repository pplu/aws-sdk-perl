
package Paws::LexModelsV2::ListBotLocalesResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotLocaleSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::BotLocaleSummary]', traits => ['NameInRequest'], request_name => 'botLocaleSummaries');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListBotLocalesResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot to list locales for.


=head2 BotLocaleSummaries => ArrayRef[L<Paws::LexModelsV2::BotLocaleSummary>]

Summary information for the locales that meet the filter criteria
specified in the request. The length of the list is specified in the
C<maxResults> parameter of the request. If there are more locales
available, the C<nextToken> field contains a token to get the next page
of results.


=head2 BotVersion => Str

The version of the bot.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListBotLocales> operation. If the C<nextToken> field
is present, you send the contents as the C<nextToken> parameter of a
C<ListBotLocales> operation request to get the next page of results.


=head2 _request_id => Str


=cut

