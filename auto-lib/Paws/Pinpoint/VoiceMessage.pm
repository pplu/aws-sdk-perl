# Generated from default/object.tt
package Paws::Pinpoint::VoiceMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOfListOf__string/;
  has Body => (is => 'ro', isa => Str);
  has LanguageCode => (is => 'ro', isa => Str);
  has OriginationNumber => (is => 'ro', isa => Str);
  has Substitutions => (is => 'ro', isa => Pinpoint_MapOfListOf__string);
  has VoiceId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VoiceId' => {
                              'type' => 'Str'
                            },
               'Substitutions' => {
                                    'class' => 'Paws::Pinpoint::MapOfListOf__string',
                                    'type' => 'Pinpoint_MapOfListOf__string'
                                  },
               'OriginationNumber' => {
                                        'type' => 'Str'
                                      },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 },
               'Body' => {
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

Paws::Pinpoint::VoiceMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::VoiceMessage object:

  $service_obj->Method(Att1 => { Body => $value, ..., VoiceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::VoiceMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

Specifies the settings for a one-time voice message that's sent
directly to an endpoint through the voice channel.

=head1 ATTRIBUTES


=head2 Body => Str

  The text script for the voice message.


=head2 LanguageCode => Str

  The language to use when delivering the message. For a list of
supported languages, see the Amazon Polly Developer Guide.


=head2 OriginationNumber => Str

  The phone number from the pool or messaging service to send the message
from. Although it isn't required, we recommend that you specify the
phone number in E.164 format to ensure prompt and accurate delivery.


=head2 Substitutions => Pinpoint_MapOfListOf__string

  The default message variables to use in the voice message. You can
override the default variables with individual address variables.


=head2 VoiceId => Str

  The name of the voice to use when delivering the message. For a list of
supported voices, see the Amazon Polly Developer Guide.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

