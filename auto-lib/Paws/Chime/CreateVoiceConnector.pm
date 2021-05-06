
package Paws::Chime::CreateVoiceConnector;
  use Moose;
  has AwsRegion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RequireEncryption => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVoiceConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateVoiceConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateVoiceConnector - Arguments for method CreateVoiceConnector on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVoiceConnector on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateVoiceConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVoiceConnector.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateVoiceConnectorResponse = $chime->CreateVoiceConnector(
      Name              => 'MyVoiceConnectorName',
      RequireEncryption => 1,
      AwsRegion         => 'us-east-1',              # OPTIONAL
    );

    # Results:
    my $VoiceConnector = $CreateVoiceConnectorResponse->VoiceConnector;

    # Returns a L<Paws::Chime::CreateVoiceConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateVoiceConnector>

=head1 ATTRIBUTES


=head2 AwsRegion => Str

The AWS Region in which the Amazon Chime Voice Connector is created.
Default value: C<us-east-1>.

Valid values are: C<"us-east-1">, C<"us-west-2">

=head2 B<REQUIRED> Name => Str

The name of the Amazon Chime Voice Connector.



=head2 B<REQUIRED> RequireEncryption => Bool

When enabled, requires encryption for the Amazon Chime Voice Connector.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVoiceConnector in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

