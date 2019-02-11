
package Paws::EC2::RejectTransitGatewayVpcAttachmentResult;
  use Moose;
  has TransitGatewayVpcAttachment => (is => 'ro', isa => 'Paws::EC2::TransitGatewayVpcAttachment', request_name => 'transitGatewayVpcAttachment', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RejectTransitGatewayVpcAttachmentResult

=head1 ATTRIBUTES


=head2 TransitGatewayVpcAttachment => L<Paws::EC2::TransitGatewayVpcAttachment>

Information about the attachment.


=head2 _request_id => Str


=cut

