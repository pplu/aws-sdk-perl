
package Paws::EC2::DeleteTransitGatewayResult;
  use Moose;
  has TransitGateway => (is => 'ro', isa => 'Paws::EC2::TransitGateway', request_name => 'transitGateway', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTransitGatewayResult

=head1 ATTRIBUTES


=head2 TransitGateway => L<Paws::EC2::TransitGateway>

Information about the deleted transit gateway.


=head2 _request_id => Str


=cut

