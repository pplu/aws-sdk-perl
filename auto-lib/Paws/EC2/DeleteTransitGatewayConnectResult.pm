
package Paws::EC2::DeleteTransitGatewayConnectResult;
  use Moose;
  has TransitGatewayConnect => (is => 'ro', isa => 'Paws::EC2::TransitGatewayConnect', request_name => 'transitGatewayConnect', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTransitGatewayConnectResult

=head1 ATTRIBUTES


=head2 TransitGatewayConnect => L<Paws::EC2::TransitGatewayConnect>

Information about the deleted Connect attachment.


=head2 _request_id => Str


=cut

