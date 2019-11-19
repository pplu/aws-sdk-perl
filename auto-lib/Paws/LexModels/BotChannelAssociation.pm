# Generated from default/object.tt
package Paws::LexModels::BotChannelAssociation;
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

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'BotName' => {
                              'type' => 'Str'
                            },
               'BotAlias' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'BotConfiguration' => {
                                       'class' => 'Paws::LexModels::ChannelConfigurationMap',
                                       'type' => 'LexModels_ChannelConfigurationMap'
                                     },
               'Type' => {
                           'type' => 'Str'
                         },
               'FailureReason' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'FailureReason' => 'failureReason',
                       'Description' => 'description',
                       'CreatedDate' => 'createdDate',
                       'BotConfiguration' => 'botConfiguration',
                       'BotAlias' => 'botAlias',
                       'Name' => 'name',
                       'Status' => 'status',
                       'BotName' => 'botName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::BotChannelAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::BotChannelAssociation object:

  $service_obj->Method(Att1 => { BotAlias => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::BotChannelAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->BotAlias

=head1 DESCRIPTION

Represents an association between an Amazon Lex bot and an external
messaging platform.

=head1 ATTRIBUTES


=head2 BotAlias => Str

  An alias pointing to the specific version of the Amazon Lex bot to
which this association is being made.


=head2 BotConfiguration => LexModels_ChannelConfigurationMap

  Provides information necessary to communicate with the messaging
platform.


=head2 BotName => Str

  The name of the Amazon Lex bot to which this association is being made.

Currently, Amazon Lex supports associations with Facebook and Slack,
and Twilio.


=head2 CreatedDate => Str

  The date that the association between the Amazon Lex bot and the
channel was created.


=head2 Description => Str

  A text description of the association you are creating.


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



=head2 Type => Str

  Specifies the type of association by indicating the type of channel
being established between the Amazon Lex bot and the external messaging
platform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

