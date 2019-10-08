
package Paws::EC2::DescribeTransitGatewayVpcAttachmentsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TransitGatewayVpcAttachment/;
  has NextToken => (is => 'ro', isa => Str);
  has TransitGatewayVpcAttachments => (is => 'ro', isa => ArrayRef[EC2_TransitGatewayVpcAttachment]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransitGatewayVpcAttachments' => {
                                                   'class' => 'Paws::EC2::TransitGatewayVpcAttachment',
                                                   'type' => 'ArrayRef[EC2_TransitGatewayVpcAttachment]'
                                                 },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TransitGatewayVpcAttachments' => 'transitGatewayVpcAttachments',
                       'NextToken' => 'nextToken'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGatewayVpcAttachmentsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 TransitGatewayVpcAttachments => ArrayRef[EC2_TransitGatewayVpcAttachment]

Information about the VPC attachments.


=head2 _request_id => Str


=cut

