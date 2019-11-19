
package Paws::Chime::AssociatePhoneNumbersWithVoiceConnector;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::Chime::Types qw//;
  has E164PhoneNumbers => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ForceAssociate => (is => 'ro', isa => Bool, predicate => 1);
  has VoiceConnectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociatePhoneNumbersWithVoiceConnector');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/voice-connectors/{voiceConnectorId}?operation=associate-phone-numbers');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::AssociatePhoneNumbersWithVoiceConnectorResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'VoiceConnectorId' => 'voiceConnectorId'
                  },
  'IsRequired' => {
                    'VoiceConnectorId' => 1
                  },
  'types' => {
               'VoiceConnectorId' => {
                                       'type' => 'Str'
                                     },
               'E164PhoneNumbers' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'ForceAssociate' => {
                                     'type' => 'Bool'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::AssociatePhoneNumbersWithVoiceConnector - Arguments for method AssociatePhoneNumbersWithVoiceConnector on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociatePhoneNumbersWithVoiceConnector on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method AssociatePhoneNumbersWithVoiceConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociatePhoneNumbersWithVoiceConnector.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $AssociatePhoneNumbersWithVoiceConnectorResponse =
      $chime->AssociatePhoneNumbersWithVoiceConnector(
      VoiceConnectorId => 'MyNonEmptyString',
      E164PhoneNumbers => [ 'MyE164PhoneNumber', ... ],    # OPTIONAL
      ForceAssociate   => 1,                               # OPTIONAL
      );

    # Results:
    my $PhoneNumberErrors =
      $AssociatePhoneNumbersWithVoiceConnectorResponse->PhoneNumberErrors;

# Returns a L<Paws::Chime::AssociatePhoneNumbersWithVoiceConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/AssociatePhoneNumbersWithVoiceConnector>

=head1 ATTRIBUTES


=head2 E164PhoneNumbers => ArrayRef[Str|Undef]

List of phone numbers, in E.164 format.



=head2 ForceAssociate => Bool

If true, associates the provided phone numbers with the provided Amazon
Chime Voice Connector and removes any previously existing associations.
If false, does not associate any phone numbers that have previously
existing associations.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Amazon Chime Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociatePhoneNumbersWithVoiceConnector in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

