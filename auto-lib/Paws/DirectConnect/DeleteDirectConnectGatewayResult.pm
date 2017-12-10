
package Paws::DirectConnect::DeleteDirectConnectGatewayResult;
  use Moose;
  has DirectConnectGateway => (is => 'ro', isa => 'Paws::DirectConnect::DirectConnectGateway', traits => ['NameInRequest'], request_name => 'directConnectGateway' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteDirectConnectGatewayResult

=head1 ATTRIBUTES


=head2 DirectConnectGateway => L<Paws::DirectConnect::DirectConnectGateway>

The direct connect gateway to be deleted.


=head2 _request_id => Str


=cut

1;