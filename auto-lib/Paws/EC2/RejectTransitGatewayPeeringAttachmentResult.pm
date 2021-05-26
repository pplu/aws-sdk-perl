
package Paws::EC2::RejectTransitGatewayPeeringAttachmentResult;
  use Moose;
  has TransitGatewayPeeringAttachment => (is => 'ro', isa => 'Paws::EC2::TransitGatewayPeeringAttachment', request_name => 'transitGatewayPeeringAttachment', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RejectTransitGatewayPeeringAttachmentResult

=head1 ATTRIBUTES


=head2 TransitGatewayPeeringAttachment => L<Paws::EC2::TransitGatewayPeeringAttachment>

The transit gateway peering attachment.


=head2 _request_id => Str


=cut

