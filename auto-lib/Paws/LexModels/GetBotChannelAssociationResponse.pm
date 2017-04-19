
package Paws::LexModels::GetBotChannelAssociationResponse;
  use Moose;
  has BotAlias => (is => 'ro', isa => 'Str');
  has BotConfiguration => (is => 'ro', isa => 'Paws::LexModels::ChannelConfigurationMap');
  has BotName => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotChannelAssociationResponse

=head1 ATTRIBUTES


=head2 BotAlias => Str

An alias pointing to the specific version of the Amazon Lex bot to
which this association is being made.


=head2 BotConfiguration => L<Paws::LexModels::ChannelConfigurationMap>

Provides information that the messaging platform needs to communicate
with the Amazon Lex bot.


=head2 BotName => Str

The name of the Amazon Lex bot.


=head2 CreatedDate => Str

The date that the association between the bot and the channel was
created.


=head2 Description => Str

A description of the association between the bot and the channel.


=head2 Name => Str

The name of the association between the bot and the channel.


=head2 Type => Str

The type of the messaging platform.

Valid values are: C<"Facebook">, C<"Slack">, C<"Twilio-Sms">
=head2 _request_id => Str


=cut

