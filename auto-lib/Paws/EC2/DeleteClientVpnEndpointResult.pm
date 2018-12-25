
package Paws::EC2::DeleteClientVpnEndpointResult;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::EC2::ClientVpnEndpointStatus', request_name => 'status', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteClientVpnEndpointResult

=head1 ATTRIBUTES


=head2 Status => L<Paws::EC2::ClientVpnEndpointStatus>

The current state of the Client VPN endpoint.


=head2 _request_id => Str


=cut

