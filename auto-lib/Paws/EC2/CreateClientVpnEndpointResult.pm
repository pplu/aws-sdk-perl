
package Paws::EC2::CreateClientVpnEndpointResult;
  use Moose;
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', request_name => 'clientVpnEndpointId', traits => ['NameInRequest',]);
  has DnsName => (is => 'ro', isa => 'Str', request_name => 'dnsName', traits => ['NameInRequest',]);
  has Status => (is => 'ro', isa => 'Paws::EC2::ClientVpnEndpointStatus', request_name => 'status', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateClientVpnEndpointResult

=head1 ATTRIBUTES


=head2 ClientVpnEndpointId => Str

The ID of the Client VPN endpoint.


=head2 DnsName => Str

The DNS name to be used by clients when establishing their VPN session.


=head2 Status => L<Paws::EC2::ClientVpnEndpointStatus>

The current state of the Client VPN endpoint.


=head2 _request_id => Str


=cut

