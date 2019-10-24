# Generated from default/object.tt
package Paws::Chime::Bot;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Chime::Types qw//;
  has BotEmail => (is => 'ro', isa => Str);
  has BotId => (is => 'ro', isa => Str);
  has BotType => (is => 'ro', isa => Str);
  has CreatedTimestamp => (is => 'ro', isa => Str);
  has Disabled => (is => 'ro', isa => Bool);
  has DisplayName => (is => 'ro', isa => Str);
  has SecurityToken => (is => 'ro', isa => Str);
  has UpdatedTimestamp => (is => 'ro', isa => Str);
  has UserId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecurityToken' => {
                                    'type' => 'Str'
                                  },
               'UserId' => {
                             'type' => 'Str'
                           },
               'BotEmail' => {
                               'type' => 'Str'
                             },
               'CreatedTimestamp' => {
                                       'type' => 'Str'
                                     },
               'BotType' => {
                              'type' => 'Str'
                            },
               'Disabled' => {
                               'type' => 'Bool'
                             },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'BotId' => {
                            'type' => 'Str'
                          },
               'UpdatedTimestamp' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::Bot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::Bot object:

  $service_obj->Method(Att1 => { BotEmail => $value, ..., UserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::Bot object:

  $result = $service_obj->Method(...);
  $result->Att1->BotEmail

=head1 DESCRIPTION

A resource that allows Enterprise account administrators to configure
an interface to receive events from Amazon Chime.

=head1 ATTRIBUTES


=head2 BotEmail => Str

  The bot email address.


=head2 BotId => Str

  The bot ID.


=head2 BotType => Str

  The bot type.


=head2 CreatedTimestamp => Str

  The bot creation timestamp, in ISO 8601 format.


=head2 Disabled => Bool

  When true, the bot is stopped from running in your account.


=head2 DisplayName => Str

  The bot display name.


=head2 SecurityToken => Str

  The security token used to authenticate Amazon Chime with the outgoing
event endpoint.


=head2 UpdatedTimestamp => Str

  The updated bot timestamp, in ISO 8601 format.


=head2 UserId => Str

  The unique ID for the bot user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

