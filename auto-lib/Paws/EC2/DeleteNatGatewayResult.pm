
package Paws::EC2::DeleteNatGatewayResult;
  use Moose;
  has NatGatewayId => (is => 'ro', isa => 'Str', xmlname => 'natGatewayId', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteNatGatewayResult

=head1 ATTRIBUTES


=head2 NatGatewayId => Str

  The ID of the NAT gateway.


=cut

