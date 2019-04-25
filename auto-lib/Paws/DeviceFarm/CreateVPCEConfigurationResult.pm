
package Paws::DeviceFarm::CreateVPCEConfigurationResult;
  use Moose;
  has VpceConfiguration => (is => 'ro', isa => 'Paws::DeviceFarm::VPCEConfiguration', traits => ['NameInRequest'], request_name => 'vpceConfiguration' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateVPCEConfigurationResult

=head1 ATTRIBUTES


=head2 VpceConfiguration => L<Paws::DeviceFarm::VPCEConfiguration>

An object containing information about your VPC endpoint configuration.


=head2 _request_id => Str


=cut

1;