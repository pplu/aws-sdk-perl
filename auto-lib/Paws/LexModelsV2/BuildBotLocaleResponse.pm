
package Paws::LexModelsV2::BuildBotLocaleResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotLocaleStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botLocaleStatus');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has LastBuildSubmittedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastBuildSubmittedDateTime');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::BuildBotLocaleResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the specified bot.


=head2 BotLocaleStatus => Str

The bot's build status. When the status is C<ReadyExpressTesting> you
can test the bot using the utterances defined for the intents and slot
types. When the status is C<Built>, the bot is ready for use and can be
tested using any utterance.

Valid values are: C<"Creating">, C<"Building">, C<"Built">, C<"ReadyExpressTesting">, C<"Failed">, C<"Deleting">, C<"NotBuilt">, C<"Importing">
=head2 BotVersion => Str

The version of the bot that was built. This is only the draft version
of the bot.


=head2 LastBuildSubmittedDateTime => Str

A timestamp indicating the date and time that the bot was last built
for this locale.


=head2 LocaleId => Str

The language and locale specified of where the bot can be used.


=head2 _request_id => Str


=cut

