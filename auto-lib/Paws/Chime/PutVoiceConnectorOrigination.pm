
package Paws::Chime::PutVoiceConnectorOrigination;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw/Chime_Origination/;
  has Origination => (is => 'ro', isa => Chime_Origination, required => 1, predicate => 1);
  has VoiceConnectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutVoiceConnectorOrigination');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/voice-connectors/{voiceConnectorId}/origination');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::PutVoiceConnectorOriginationResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VoiceConnectorId' => {
                                       'type' => 'Str'
                                     },
               'Origination' => {
                                  'class' => 'Paws::Chime::Origination',
                                  'type' => 'Chime_Origination'
                                }
             },
  'ParamInURI' => {
                    'VoiceConnectorId' => 'voiceConnectorId'
                  },
  'IsRequired' => {
                    'VoiceConnectorId' => 1,
                    'Origination' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutVoiceConnectorOrigination - Arguments for method PutVoiceConnectorOrigination on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutVoiceConnectorOrigination on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method PutVoiceConnectorOrigination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutVoiceConnectorOrigination.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $PutVoiceConnectorOriginationResponse =
      $chime->PutVoiceConnectorOrigination(
      Origination => {
        Disabled => 1,    # OPTIONAL
        Routes   => [
          {
            Host     => 'MyString',    # OPTIONAL
            Port     => 1,             # max: 65535; OPTIONAL
            Priority => 1,             # min: 1, max: 100; OPTIONAL
            Protocol => 'TCP',         # values: TCP, UDP; OPTIONAL
            Weight   => 1,             # min: 1, max: 100; OPTIONAL
          },
          ...
        ],                             # OPTIONAL
      },
      VoiceConnectorId => 'MyNonEmptyString',

      );

    # Results:
    my $Origination = $PutVoiceConnectorOriginationResponse->Origination;

    # Returns a L<Paws::Chime::PutVoiceConnectorOriginationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/PutVoiceConnectorOrigination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Origination => Chime_Origination

The origination setting details to add.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Amazon Chime Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutVoiceConnectorOrigination in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

