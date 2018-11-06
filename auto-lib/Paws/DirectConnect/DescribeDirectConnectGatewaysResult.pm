
package Paws::DirectConnect::DescribeDirectConnectGatewaysResult;
  use Moose;
  has DirectConnectGateways => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::DirectConnectGateway]', traits => ['NameInRequest'], request_name => 'directConnectGateways' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeDirectConnectGatewaysResult

=head1 ATTRIBUTES


=head2 DirectConnectGateways => ArrayRef[L<Paws::DirectConnect::DirectConnectGateway>]

The Direct Connect gateways.


=head2 NextToken => Str

The token to retrieve the next page.


=head2 _request_id => Str


=cut

1;