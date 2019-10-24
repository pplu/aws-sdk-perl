
package Paws::LexModels::GetBotChannelAssociationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LexModels::Types qw/LexModels_ChannelConfigurationMap/;
  has BotAlias => (is => 'ro', isa => Str);
  has BotConfiguration => (is => 'ro', isa => LexModels_ChannelConfigurationMap);
  has BotName => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BotName' => {
                              'type' => 'Str'
                            },
               'Status' => {
                             'type' => 'Str'
                           },
               'BotAlias' => {
                               'type' => 'Str'
                             },
               'Type' => {
                           'type' => 'Str'
                         },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'BotConfiguration' => {
                                       'class' => 'Paws::LexModels::ChannelConfigurationMap',
                                       'type' => 'LexModels_ChannelConfigurationMap'
                                     },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'BotName' => 'botName',
                       'Status' => 'status',
                       'BotAlias' => 'botAlias',
                       'Type' => 'type',
                       'CreatedDate' => 'createdDate',
                       'BotConfiguration' => 'botConfiguration',
                       'FailureReason' => 'failureReason',
                       'Description' => 'description',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotChannelAssociationResponse

=head1 ATTRIBUTES


=head2 BotAlias => Str

An alias pointing to the specific version of the Amazon Lex bot to
which this association is being made.


=head2 BotConfiguration => LexModels_ChannelConfigurationMap

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

