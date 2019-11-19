
package Paws::Chime::DisassociatePhoneNumbersFromVoiceConnector;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Chime::Types qw//;
  has E164PhoneNumbers => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has VoiceConnectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DisassociatePhoneNumbersFromVoiceConnector');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/voice-connectors/{voiceConnectorId}?operation=disassociate-phone-numbers');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'VoiceConnectorId' => 1
                  },
  'types' => {
               'VoiceConnectorId' => {
                                       'type' => 'Str'
                                     },
               'E164PhoneNumbers' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             },
  'ParamInURI' => {
                    'VoiceConnectorId' => 'voiceConnectorId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DisassociatePhoneNumbersFromVoiceConnector - Arguments for method DisassociatePhoneNumbersFromVoiceConnector on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociatePhoneNumbersFromVoiceConnector on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method DisassociatePhoneNumbersFromVoiceConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociatePhoneNumbersFromVoiceConnector.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $DisassociatePhoneNumbersFromVoiceConnectorResponse =
      $chime->DisassociatePhoneNumbersFromVoiceConnector(
      VoiceConnectorId => 'MyNonEmptyString',
      E164PhoneNumbers => [ 'MyE164PhoneNumber', ... ],    # OPTIONAL
      );

    # Results:
    my $PhoneNumberErrors =
      $DisassociatePhoneNumbersFromVoiceConnectorResponse->PhoneNumberErrors;

# Returns a L<Paws::Chime::DisassociatePhoneNumbersFromVoiceConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/DisassociatePhoneNumbersFromVoiceConnector>

=head1 ATTRIBUTES


=head2 E164PhoneNumbers => ArrayRef[Str|Undef]

List of phone numbers, in E.164 format.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Amazon Chime Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociatePhoneNumbersFromVoiceConnector in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

