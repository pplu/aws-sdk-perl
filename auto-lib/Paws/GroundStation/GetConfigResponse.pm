
package Paws::GroundStation::GetConfigResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw/GroundStation_ConfigTypeData GroundStation_TagsMap/;
  has ConfigArn => (is => 'ro', isa => Str, required => 1);
  has ConfigData => (is => 'ro', isa => GroundStation_ConfigTypeData, required => 1);
  has ConfigId => (is => 'ro', isa => Str, required => 1);
  has ConfigType => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Tags => (is => 'ro', isa => GroundStation_TagsMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigType' => {
                                 'type' => 'Str'
                               },
               'ConfigData' => {
                                 'class' => 'Paws::GroundStation::ConfigTypeData',
                                 'type' => 'GroundStation_ConfigTypeData'
                               },
               'ConfigArn' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::GroundStation::TagsMap',
                           'type' => 'GroundStation_TagsMap'
                         },
               'Name' => {
                           'type' => 'Str'
                         },
               'ConfigId' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'ConfigType' => 'configType',
                       'ConfigData' => 'configData',
                       'ConfigArn' => 'configArn',
                       'Tags' => 'tags',
                       'Name' => 'name',
                       'ConfigId' => 'configId'
                     },
  'IsRequired' => {
                    'ConfigData' => 1,
                    'ConfigArn' => 1,
                    'Name' => 1,
                    'ConfigId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigArn => Str

ARN of a C<Config>


=head2 B<REQUIRED> ConfigData => GroundStation_ConfigTypeData

Data elements in a C<Config>.


=head2 B<REQUIRED> ConfigId => Str

UUID of a C<Config>.


=head2 ConfigType => Str

Type of a C<Config>.

Valid values are: C<"antenna-downlink">, C<"antenna-downlink-demod-decode">, C<"antenna-uplink">, C<"dataflow-endpoint">, C<"tracking">, C<"uplink-echo">
=head2 B<REQUIRED> Name => Str

Name of a C<Config>.


=head2 Tags => GroundStation_TagsMap

Tags assigned to a C<Config>.


=head2 _request_id => Str


=cut

