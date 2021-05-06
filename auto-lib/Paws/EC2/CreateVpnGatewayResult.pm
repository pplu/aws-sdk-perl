
package Paws::EC2::CreateVpnGatewayResult;
  use Moose;
  has VpnGateway => (is => 'ro', isa => 'Paws::EC2::VpnGateway', request_name => 'vpnGateway', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpnGatewayResult

=head1 ATTRIBUTES


=head2 VpnGateway => L<Paws::EC2::VpnGateway>

Information about the virtual private gateway.


=head2 _request_id => Str


=cut

