
package Paws::EC2::AttachVpnGatewayResult;
  use Moose;
  has VpcAttachment => (is => 'ro', isa => 'Paws::EC2::VpcAttachment', request_name => 'attachment', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AttachVpnGatewayResult

=head1 ATTRIBUTES


=head2 VpcAttachment => L<Paws::EC2::VpcAttachment>

Information about the attachment.




=cut

