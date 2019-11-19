
package Paws::Chime::GetVoiceConnectorTermination;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has VoiceConnectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetVoiceConnectorTermination');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/voice-connectors/{voiceConnectorId}/termination');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::GetVoiceConnectorTerminationResponse');

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
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetVoiceConnectorTermination - Arguments for method GetVoiceConnectorTermination on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVoiceConnectorTermination on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method GetVoiceConnectorTermination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVoiceConnectorTermination.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $GetVoiceConnectorTerminationResponse =
      $chime->GetVoiceConnectorTermination(
      VoiceConnectorId => 'MyNonEmptyString',

      );

    # Results:
    my $Termination = $GetVoiceConnectorTerminationResponse->Termination;

    # Returns a L<Paws::Chime::GetVoiceConnectorTerminationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/GetVoiceConnectorTermination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VoiceConnectorId => Str

The Amazon Chime Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVoiceConnectorTermination in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

