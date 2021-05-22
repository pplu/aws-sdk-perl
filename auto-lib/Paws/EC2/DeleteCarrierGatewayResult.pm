
package Paws::EC2::DeleteCarrierGatewayResult;
  use Moose;
  has CarrierGateway => (is => 'ro', isa => 'Paws::EC2::CarrierGateway', request_name => 'carrierGateway', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteCarrierGatewayResult

=head1 ATTRIBUTES


=head2 CarrierGateway => L<Paws::EC2::CarrierGateway>

Information about the carrier gateway.


=head2 _request_id => Str


=cut

