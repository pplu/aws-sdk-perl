
package Paws::Chime::DeleteVoiceConnectorTerminationCredentials;
  use Moose;
  has Usernames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVoiceConnectorTerminationCredentials');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/termination/credentials?operation=delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DeleteVoiceConnectorTerminationCredentials - Arguments for method DeleteVoiceConnectorTerminationCredentials on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVoiceConnectorTerminationCredentials on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method DeleteVoiceConnectorTerminationCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVoiceConnectorTerminationCredentials.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    $chime->DeleteVoiceConnectorTerminationCredentials(
      Usernames        => [ 'MySensitiveString', ... ],
      VoiceConnectorId => 'MyNonEmptyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/DeleteVoiceConnectorTerminationCredentials>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Usernames => ArrayRef[Str|Undef]

The RFC2617 compliant username associated with the SIP credentials, in
US-ASCII format.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Amazon Chime Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVoiceConnectorTerminationCredentials in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

