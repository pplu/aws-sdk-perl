
package Paws::EC2::DeleteNatGatewayResult;
  use Moose;
  has NatGatewayId => (is => 'ro', isa => 'Str', request_name => 'natGatewayId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteNatGatewayResult

=head1 ATTRIBUTES


=head2 NatGatewayId => Str

The ID of the NAT gateway.


=head2 _request_id => Str


=cut

