
package Paws::Chime::AssociatePhoneNumbersWithVoiceConnectorGroup;
  use Moose;
  has E164PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ForceAssociate => (is => 'ro', isa => 'Bool');
  has VoiceConnectorGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorGroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociatePhoneNumbersWithVoiceConnectorGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connector-groups/{voiceConnectorGroupId}?operation=associate-phone-numbers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::AssociatePhoneNumbersWithVoiceConnectorGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::AssociatePhoneNumbersWithVoiceConnectorGroup - Arguments for method AssociatePhoneNumbersWithVoiceConnectorGroup on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociatePhoneNumbersWithVoiceConnectorGroup on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method AssociatePhoneNumbersWithVoiceConnectorGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociatePhoneNumbersWithVoiceConnectorGroup.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $AssociatePhoneNumbersWithVoiceConnectorGroupResponse =
      $chime->AssociatePhoneNumbersWithVoiceConnectorGroup(
      VoiceConnectorGroupId => 'MyNonEmptyString',
      E164PhoneNumbers      => [ 'MyE164PhoneNumber', ... ],    # OPTIONAL
      ForceAssociate        => 1,                               # OPTIONAL
      );

    # Results:
    my $PhoneNumberErrors =
      $AssociatePhoneNumbersWithVoiceConnectorGroupResponse->PhoneNumberErrors;

# Returns a L<Paws::Chime::AssociatePhoneNumbersWithVoiceConnectorGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/AssociatePhoneNumbersWithVoiceConnectorGroup>

=head1 ATTRIBUTES


=head2 E164PhoneNumbers => ArrayRef[Str|Undef]

List of phone numbers, in E.164 format.



=head2 ForceAssociate => Bool

If true, associates the provided phone numbers with the provided Amazon
Chime Voice Connector Group and removes any previously existing
associations. If false, does not associate any phone numbers that have
previously existing associations.



=head2 B<REQUIRED> VoiceConnectorGroupId => Str

The Amazon Chime Voice Connector group ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociatePhoneNumbersWithVoiceConnectorGroup in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

