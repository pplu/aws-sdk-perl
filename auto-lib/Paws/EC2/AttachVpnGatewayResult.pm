
package Paws::EC2::AttachVpnGatewayResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has VpcAttachment => (is => 'ro', isa => 'Paws::EC2::VpcAttachment', xmlname => 'attachment', traits => ['Unwrapped',]);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AttachVpnGatewayResult

=head1 ATTRIBUTES

=head2 VpcAttachment => Paws::EC2::VpcAttachment

  

Information about the attachment.











=cut

