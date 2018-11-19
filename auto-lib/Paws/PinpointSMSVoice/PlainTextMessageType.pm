package Paws::PinpointSMSVoice::PlainTextMessageType;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str');
  has Text => (is => 'ro', isa => 'Str');
  has VoiceId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::PlainTextMessageType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointSMSVoice::PlainTextMessageType object:

  $service_obj->Method(Att1 => { LanguageCode => $value, ..., VoiceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointSMSVoice::PlainTextMessageType object:

  $result = $service_obj->Method(...);
  $result->Att1->LanguageCode

=head1 DESCRIPTION

An object that defines a message that contains unformatted text.

=head1 ATTRIBUTES


=head2 LanguageCode => Str

  The language to use when delivering the message. For a complete list of
supported languages, see the Amazon Polly Developer Guide.


=head2 Text => Str

  The plain (not SSML-formatted) text to deliver to the recipient.


=head2 VoiceId => Str

  The name of the voice that you want to use to deliver the message. For
a complete list of supported voices, see the Amazon Polly Developer
Guide.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointSMSVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

