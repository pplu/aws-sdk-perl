
package Paws::Chime::UpdateVoiceConnector;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Chime::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RequireEncryption => (is => 'ro', isa => Bool, required => 1, predicate => 1);
  has VoiceConnectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateVoiceConnector');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/voice-connectors/{voiceConnectorId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::UpdateVoiceConnectorResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VoiceConnectorId' => {
                                       'type' => 'Str'
                                     },
               'RequireEncryption' => {
                                        'type' => 'Bool'
                                      },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'ParamInURI' => {
                    'VoiceConnectorId' => 'voiceConnectorId'
                  },
  'IsRequired' => {
                    'VoiceConnectorId' => 1,
                    'RequireEncryption' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateVoiceConnector - Arguments for method UpdateVoiceConnector on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVoiceConnector on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method UpdateVoiceConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVoiceConnector.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $UpdateVoiceConnectorResponse = $chime->UpdateVoiceConnector(
      Name              => 'MyVoiceConnectorName',
      RequireEncryption => 1,
      VoiceConnectorId  => 'MyNonEmptyString',

    );

    # Results:
    my $VoiceConnector = $UpdateVoiceConnectorResponse->VoiceConnector;

    # Returns a L<Paws::Chime::UpdateVoiceConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/UpdateVoiceConnector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the Amazon Chime Voice Connector.



=head2 B<REQUIRED> RequireEncryption => Bool

When enabled, requires encryption for the Amazon Chime Voice Connector.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Amazon Chime Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVoiceConnector in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

