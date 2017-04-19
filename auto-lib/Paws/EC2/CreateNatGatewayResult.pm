
package Paws::EC2::CreateNatGatewayResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has NatGateway => (is => 'ro', isa => 'Paws::EC2::NatGateway', request_name => 'natGateway', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNatGatewayResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure the idempotency of the
request. Only returned if a client token was provided in the request.


=head2 NatGateway => L<Paws::EC2::NatGateway>

Information about the NAT gateway.


=head2 _request_id => Str


=cut

