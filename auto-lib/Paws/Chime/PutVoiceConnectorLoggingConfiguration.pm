
package Paws::Chime::PutVoiceConnectorLoggingConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_LoggingConfiguration/;
  has LoggingConfiguration => (is => 'ro', isa => Chime_LoggingConfiguration, required => 1, predicate => 1);
  has VoiceConnectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutVoiceConnectorLoggingConfiguration');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/voice-connectors/{voiceConnectorId}/logging-configuration');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::PutVoiceConnectorLoggingConfigurationResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoggingConfiguration' => {
                                           'type' => 'Chime_LoggingConfiguration',
                                           'class' => 'Paws::Chime::LoggingConfiguration'
                                         },
               'VoiceConnectorId' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'VoiceConnectorId' => 1,
                    'LoggingConfiguration' => 1
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

Paws::Chime::PutVoiceConnectorLoggingConfiguration - Arguments for method PutVoiceConnectorLoggingConfiguration on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutVoiceConnectorLoggingConfiguration on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method PutVoiceConnectorLoggingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutVoiceConnectorLoggingConfiguration.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $PutVoiceConnectorLoggingConfigurationResponse =
      $chime->PutVoiceConnectorLoggingConfiguration(
      LoggingConfiguration => {
        EnableSIPLogs => 1,    # OPTIONAL
      },
      VoiceConnectorId => 'MyNonEmptyString',

      );

    # Results:
    my $LoggingConfiguration =
      $PutVoiceConnectorLoggingConfigurationResponse->LoggingConfiguration;

# Returns a L<Paws::Chime::PutVoiceConnectorLoggingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/PutVoiceConnectorLoggingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggingConfiguration => Chime_LoggingConfiguration

The logging configuration details to add.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Amazon Chime Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutVoiceConnectorLoggingConfiguration in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

