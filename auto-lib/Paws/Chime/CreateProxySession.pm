
package Paws::Chime::CreateProxySession;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ExpiryMinutes => (is => 'ro', isa => 'Int');
  has GeoMatchLevel => (is => 'ro', isa => 'Str');
  has GeoMatchParams => (is => 'ro', isa => 'Paws::Chime::GeoMatchParams');
  has Name => (is => 'ro', isa => 'Str');
  has NumberSelectionBehavior => (is => 'ro', isa => 'Str');
  has ParticipantPhoneNumbers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProxySession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/proxy-sessions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateProxySessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateProxySession - Arguments for method CreateProxySession on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProxySession on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateProxySession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProxySession.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateProxySessionResponse = $chime->CreateProxySession(
      Capabilities => [
        'Voice', ...    # values: Voice, SMS
      ],
      ParticipantPhoneNumbers => [ 'MyE164PhoneNumber', ... ],
      VoiceConnectorId        => 'MyNonEmptyString128',
      ExpiryMinutes           => 1,                              # OPTIONAL
      GeoMatchLevel           => 'Country',                      # OPTIONAL
      GeoMatchParams          => {
        AreaCode => 'MyAreaCode',
        Country  => 'MyCountry',

      },                                                         # OPTIONAL
      Name                    => 'MyProxySessionNameString',     # OPTIONAL
      NumberSelectionBehavior => 'PreferSticky',                 # OPTIONAL
    );

    # Results:
    my $ProxySession = $CreateProxySessionResponse->ProxySession;

    # Returns a L<Paws::Chime::CreateProxySessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateProxySession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Capabilities => ArrayRef[Str|Undef]

The proxy session capabilities.



=head2 ExpiryMinutes => Int

The number of minutes allowed for the proxy session.



=head2 GeoMatchLevel => Str

The preference for matching the country or area code of the proxy phone
number with that of the first participant.

Valid values are: C<"Country">, C<"AreaCode">

=head2 GeoMatchParams => L<Paws::Chime::GeoMatchParams>

The country and area code for the proxy phone number.



=head2 Name => Str

The name of the proxy session.



=head2 NumberSelectionBehavior => Str

The preference for proxy phone number reuse, or stickiness, between the
same participants across sessions.

Valid values are: C<"PreferSticky">, C<"AvoidSticky">

=head2 B<REQUIRED> ParticipantPhoneNumbers => ArrayRef[Str|Undef]

The participant phone numbers.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Amazon Chime voice connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProxySession in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

