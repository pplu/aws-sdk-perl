
package Paws::Chime::PutVoiceConnectorProxy;
  use Moose;
  has DefaultSessionExpiryMinutes => (is => 'ro', isa => 'Int', required => 1);
  has Disabled => (is => 'ro', isa => 'Bool');
  has FallBackPhoneNumber => (is => 'ro', isa => 'Str');
  has PhoneNumberPoolCountries => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutVoiceConnectorProxy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/programmable-numbers/proxy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::PutVoiceConnectorProxyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutVoiceConnectorProxy - Arguments for method PutVoiceConnectorProxy on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutVoiceConnectorProxy on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method PutVoiceConnectorProxy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutVoiceConnectorProxy.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $PutVoiceConnectorProxyResponse = $chime->PutVoiceConnectorProxy(
      DefaultSessionExpiryMinutes => 1,
      PhoneNumberPoolCountries    => [ 'MyCountry', ... ],
      VoiceConnectorId            => 'MyNonEmptyString128',
      Disabled                    => 1,                       # OPTIONAL
      FallBackPhoneNumber         => 'MyE164PhoneNumber',     # OPTIONAL
    );

    # Results:
    my $Proxy = $PutVoiceConnectorProxyResponse->Proxy;

    # Returns a L<Paws::Chime::PutVoiceConnectorProxyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/PutVoiceConnectorProxy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultSessionExpiryMinutes => Int

The default number of minutes allowed for proxy sessions.



=head2 Disabled => Bool

When true, stops proxy sessions from being created on the specified
Amazon Chime Voice Connector.



=head2 FallBackPhoneNumber => Str

The phone number to route calls to after a proxy session expires.



=head2 B<REQUIRED> PhoneNumberPoolCountries => ArrayRef[Str|Undef]

The countries for proxy phone numbers to be selected from.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Amazon Chime voice connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutVoiceConnectorProxy in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

