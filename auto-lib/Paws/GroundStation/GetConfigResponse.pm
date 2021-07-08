
package Paws::GroundStation::GetConfigResponse;
  use Moose;
  has ConfigArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configArn', required => 1);
  has ConfigData => (is => 'ro', isa => 'Paws::GroundStation::ConfigTypeData', traits => ['NameInRequest'], request_name => 'configData', required => 1);
  has ConfigId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configId', required => 1);
  has ConfigType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configType');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigArn => Str

ARN of a C<Config>


=head2 B<REQUIRED> ConfigData => L<Paws::GroundStation::ConfigTypeData>

Data elements in a C<Config>.


=head2 B<REQUIRED> ConfigId => Str

UUID of a C<Config>.


=head2 ConfigType => Str

Type of a C<Config>.

Valid values are: C<"antenna-downlink">, C<"antenna-downlink-demod-decode">, C<"antenna-uplink">, C<"dataflow-endpoint">, C<"tracking">, C<"uplink-echo">, C<"s3-recording">
=head2 B<REQUIRED> Name => Str

Name of a C<Config>.


=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags assigned to a C<Config>.


=head2 _request_id => Str


=cut

