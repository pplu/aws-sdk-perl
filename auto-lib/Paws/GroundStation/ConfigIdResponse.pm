
package Paws::GroundStation::ConfigIdResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw//;
  has ConfigArn => (is => 'ro', isa => Str);
  has ConfigId => (is => 'ro', isa => Str);
  has ConfigType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigType' => {
                                 'type' => 'Str'
                               },
               'ConfigArn' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConfigId' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'ConfigType' => 'configType',
                       'ConfigArn' => 'configArn',
                       'ConfigId' => 'configId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ConfigIdResponse

=head1 ATTRIBUTES


=head2 ConfigArn => Str

ARN of a C<Config>.


=head2 ConfigId => Str

UUID of a C<Config>.


=head2 ConfigType => Str

Type of a C<Config>.

Valid values are: C<"antenna-downlink">, C<"antenna-downlink-demod-decode">, C<"antenna-uplink">, C<"dataflow-endpoint">, C<"tracking">, C<"uplink-echo">
=head2 _request_id => Str


=cut

