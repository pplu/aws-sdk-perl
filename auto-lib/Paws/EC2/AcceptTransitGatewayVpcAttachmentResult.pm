
package Paws::EC2::AcceptTransitGatewayVpcAttachmentResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TransitGatewayVpcAttachment/;
  has TransitGatewayVpcAttachment => (is => 'ro', isa => EC2_TransitGatewayVpcAttachment);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransitGatewayVpcAttachment' => {
                                                  'class' => 'Paws::EC2::TransitGatewayVpcAttachment',
                                                  'type' => 'EC2_TransitGatewayVpcAttachment'
                                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TransitGatewayVpcAttachment' => 'transitGatewayVpcAttachment'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AcceptTransitGatewayVpcAttachmentResult

=head1 ATTRIBUTES


=head2 TransitGatewayVpcAttachment => EC2_TransitGatewayVpcAttachment

The VPC attachment.


=head2 _request_id => Str


=cut

