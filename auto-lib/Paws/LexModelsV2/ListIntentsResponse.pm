
package Paws::LexModelsV2::ListIntentsResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has IntentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::IntentSummary]', traits => ['NameInRequest'], request_name => 'intentSummaries');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListIntentsResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot that contains the intent.


=head2 BotVersion => Str

The version of the bot that contains the intent.


=head2 IntentSummaries => ArrayRef[L<Paws::LexModelsV2::IntentSummary>]

Summary information for the intents that meet the filter criteria
specified in the request. The length of the list is specified in the
C<maxResults> parameter of the request. If there are more intents
available, the C<nextToken> field contains a token to get the next page
of results.


=head2 LocaleId => Str

The language and locale of the intents in the list.


=head2 NextToken => Str

A token that indicates whether there are more results to return in a
response to the C<ListIntents> operation. If the C<nextToken> field is
present, you send the contents as the C<nextToken> parameter of a
C<ListIntents> operation request to get the next page of results.


=head2 _request_id => Str


=cut

