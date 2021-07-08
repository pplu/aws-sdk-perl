
package Paws::LexModelsV2::DeleteBotLocaleResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotLocaleStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botLocaleStatus');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteBotLocaleResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The identifier of the bot that contained the deleted locale.


=head2 BotLocaleStatus => Str

The status of deleting the bot locale. The locale first enters the
C<Deleting> status. Once the locale is deleted it no longer appears in
the list of locales for the bot.

Valid values are: C<"Creating">, C<"Building">, C<"Built">, C<"ReadyExpressTesting">, C<"Failed">, C<"Deleting">, C<"NotBuilt">, C<"Importing">
=head2 BotVersion => Str

The version of the bot that contained the deleted locale.


=head2 LocaleId => Str

The language and locale of the deleted locale.


=head2 _request_id => Str


=cut

