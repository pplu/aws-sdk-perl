package Paws::PinpointSMSVoice::VoiceMessageContent;
  use Moose;
  has CallInstructionsMessage => (is => 'ro', isa => 'Paws::PinpointSMSVoice::CallInstructionsMessageType');
  has PlainTextMessage => (is => 'ro', isa => 'Paws::PinpointSMSVoice::PlainTextMessageType');
  has SSMLMessage => (is => 'ro', isa => 'Paws::PinpointSMSVoice::SSMLMessageType');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::VoiceMessageContent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointSMSVoice::VoiceMessageContent object:

  $service_obj->Method(Att1 => { CallInstructionsMessage => $value, ..., SSMLMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointSMSVoice::VoiceMessageContent object:

  $result = $service_obj->Method(...);
  $result->Att1->CallInstructionsMessage

=head1 DESCRIPTION

An object that contains a voice message and information about the
recipient that you want to send it to.

=head1 ATTRIBUTES


=head2 CallInstructionsMessage => L<Paws::PinpointSMSVoice::CallInstructionsMessageType>

  


=head2 PlainTextMessage => L<Paws::PinpointSMSVoice::PlainTextMessageType>

  


=head2 SSMLMessage => L<Paws::PinpointSMSVoice::SSMLMessageType>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointSMSVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

