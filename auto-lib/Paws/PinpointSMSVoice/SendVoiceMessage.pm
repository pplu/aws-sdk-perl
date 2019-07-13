
package Paws::PinpointSMSVoice::SendVoiceMessage;
  use Moose;
  has CallerId => (is => 'ro', isa => 'Str');
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'Paws::PinpointSMSVoice::VoiceMessageContent');
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str');
  has OriginationPhoneNumber => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendVoiceMessage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/sms-voice/voice/message');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoice::SendVoiceMessageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::SendVoiceMessage - Arguments for method SendVoiceMessage on L<Paws::PinpointSMSVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendVoiceMessage on the
L<Amazon Pinpoint SMS and Voice Service|Paws::PinpointSMSVoice> service. Use the attributes of this class
as arguments to method SendVoiceMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendVoiceMessage.

=head1 SYNOPSIS

    my $sms-voice.pinpoint = Paws->service('PinpointSMSVoice');
    my $SendVoiceMessageResponse = $sms -voice . pinpoint->SendVoiceMessage(
      CallerId             => 'MyString',                          # OPTIONAL
      ConfigurationSetName => 'MyWordCharactersWithDelimiters',    # OPTIONAL
      Content              => {
        CallInstructionsMessage => {
          Text => 'MyNonEmptyString',                              # OPTIONAL
        },    # OPTIONAL
        PlainTextMessage => {
          LanguageCode => 'MyString',
          Text         => 'MyNonEmptyString',    # OPTIONAL
          VoiceId      => 'MyString',
        },    # OPTIONAL
        SSMLMessage => {
          LanguageCode => 'MyString',
          Text         => 'MyNonEmptyString',    # OPTIONAL
          VoiceId      => 'MyString',
        },    # OPTIONAL
      },    # OPTIONAL
      DestinationPhoneNumber => 'MyNonEmptyString',    # OPTIONAL
      OriginationPhoneNumber => 'MyNonEmptyString',    # OPTIONAL
    );

    # Results:
    my $MessageId = $SendVoiceMessageResponse->MessageId;

    # Returns a L<Paws::PinpointSMSVoice::SendVoiceMessageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice.pinpoint/SendVoiceMessage>

=head1 ATTRIBUTES


=head2 CallerId => Str

The phone number that appears on recipients' devices when they receive
the message.



=head2 ConfigurationSetName => Str

The name of the configuration set that you want to use to send the
message.



=head2 Content => L<Paws::PinpointSMSVoice::VoiceMessageContent>





=head2 DestinationPhoneNumber => Str

The phone number that you want to send the voice message to.



=head2 OriginationPhoneNumber => Str

The phone number that Amazon Pinpoint should use to send the voice
message. This isn't necessarily the phone number that appears on
recipients' devices when they receive the message, because you can
specify a CallerId parameter in the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendVoiceMessage in L<Paws::PinpointSMSVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

