
package Paws::GroundStation::ConfigIdResponse;
  use Moose;
  has ConfigArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configArn');
  has ConfigId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configId');
  has ConfigType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configType');

  has _request_id => (is => 'ro', isa => 'Str');
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

Valid values are: C<"antenna-downlink">, C<"antenna-downlink-demod-decode">, C<"antenna-uplink">, C<"dataflow-endpoint">, C<"tracking">, C<"uplink-echo">, C<"s3-recording">
=head2 _request_id => Str


=cut

