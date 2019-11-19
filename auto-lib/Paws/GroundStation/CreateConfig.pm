
package Paws::GroundStation::CreateConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw/GroundStation_ConfigTypeData GroundStation_TagsMap/;
  has ConfigData => (is => 'ro', isa => GroundStation_ConfigTypeData, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => GroundStation_TagsMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateConfig');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/config');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::ConfigIdResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Name' => 'name',
                       'Tags' => 'tags',
                       'ConfigData' => 'configData'
                     },
  'IsRequired' => {
                    'ConfigData' => 1,
                    'Name' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Tags' => {
                           'type' => 'GroundStation_TagsMap',
                           'class' => 'Paws::GroundStation::TagsMap'
                         },
               'ConfigData' => {
                                 'type' => 'GroundStation_ConfigTypeData',
                                 'class' => 'Paws::GroundStation::ConfigTypeData'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::CreateConfig - Arguments for method CreateConfig on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfig on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method CreateConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfig.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $ConfigIdResponse = $groundstation->CreateConfig(
      ConfigData => {
        AntennaDownlinkConfig => {
          SpectrumConfig => {
            Bandwidth => {
              Units => 'GHz',    # values: GHz, MHz, kHz
              Value => 1,

            },
            CenterFrequency => {
              Units => 'GHz',    # values: GHz, MHz, kHz
              Value => 1,

            },
            Polarization =>
              'LEFT_HAND',       # values: LEFT_HAND, NONE, RIGHT_HAND; OPTIONAL
          },

        },    # OPTIONAL
        AntennaDownlinkDemodDecodeConfig => {
          DecodeConfig => {
            UnvalidatedJSON => 'MyJsonString',    # min: 2, max: 8192

          },
          DemodulationConfig => {
            UnvalidatedJSON => 'MyJsonString',    # min: 2, max: 8192

          },
          SpectrumConfig => {
            Bandwidth => {
              Units => 'GHz',                     # values: GHz, MHz, kHz
              Value => 1,

            },
            CenterFrequency => {
              Units => 'GHz',                     # values: GHz, MHz, kHz
              Value => 1,

            },
            Polarization =>
              'LEFT_HAND',    # values: LEFT_HAND, NONE, RIGHT_HAND; OPTIONAL
          },

        },    # OPTIONAL
        AntennaUplinkConfig => {
          SpectrumConfig => {
            CenterFrequency => {
              Units => 'GHz',    # values: GHz, MHz, kHz
              Value => 1,

            },
            Polarization =>
              'LEFT_HAND',       # values: LEFT_HAND, NONE, RIGHT_HAND; OPTIONAL
          },
          TargetEirp => {
            Units => 'dBW',      # values: dBW
            Value => 1,

          },

        },    # OPTIONAL
        DataflowEndpointConfig => {
          DataflowEndpointName => 'MyString',

        },    # OPTIONAL
        TrackingConfig => {
          Autotrack => 'PREFERRED',    # values: PREFERRED, REMOVED, REQUIRED

        },    # OPTIONAL
        UplinkEchoConfig => {
          AntennaUplinkConfigArn => 'MyConfigArn',
          Enabled                => 1,

        },    # OPTIONAL
      },
      Name => 'MySafeName',
      Tags => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $ConfigArn  = $ConfigIdResponse->ConfigArn;
    my $ConfigId   = $ConfigIdResponse->ConfigId;
    my $ConfigType = $ConfigIdResponse->ConfigType;

    # Returns a L<Paws::GroundStation::ConfigIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/CreateConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigData => GroundStation_ConfigTypeData

Parameters of a C<Config>.



=head2 B<REQUIRED> Name => Str

Name of a C<Config>.



=head2 Tags => GroundStation_TagsMap

Tags assigned to a C<Config>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfig in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

