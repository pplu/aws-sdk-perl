
package Paws::LexModels::GetBotChannelAssociationResponse;
  use Moose;
  has BotAlias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botAlias');
  has BotConfiguration => (is => 'ro', isa => 'Paws::LexModels::ChannelConfigurationMap', traits => ['NameInRequest'], request_name => 'botConfiguration');
  has BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botName');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

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


=head2 FailureReason => Str

If C<status> is C<FAILED>, Amazon Lex provides the reason that it
failed to create the association.


=head2 Name => Str

The name of the association between the bot and the channel.


=head2 Status => Str

The status of the bot channel.

=over

=item *

C<CREATED> - The channel has been created and is ready for use.

=item *

C<IN_PROGRESS> - Channel creation is in progress.

=item *

C<FAILED> - There was an error creating the channel. For information
about the reason for the failure, see the C<failureReason> field.

=back


Valid values are: C<"IN_PROGRESS">, C<"CREATED">, C<"FAILED">
=head2 Type => Str

The type of the messaging platform.

Valid values are: C<"Facebook">, C<"Slack">, C<"Twilio-Sms">, C<"Kik">
=head2 _request_id => Str


=cut

