
package Paws::DirectConnect::CreateDirectConnectGatewayResult;
  use Moose;
  has DirectConnectGateway => (is => 'ro', isa => 'Paws::DirectConnect::DirectConnectGateway', traits => ['NameInRequest'], request_name => 'directConnectGateway' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateDirectConnectGatewayResult

=head1 ATTRIBUTES


=head2 DirectConnectGateway => L<Paws::DirectConnect::DirectConnectGateway>

The Direct Connect gateway.


=head2 _request_id => Str


=cut

1;