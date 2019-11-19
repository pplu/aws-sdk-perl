
package Paws::EC2::DescribeTransitGatewayAttachmentsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TransitGatewayAttachment/;
  has NextToken => (is => 'ro', isa => Str);
  has TransitGatewayAttachments => (is => 'ro', isa => ArrayRef[EC2_TransitGatewayAttachment]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TransitGatewayAttachments' => 'transitGatewayAttachments',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'TransitGatewayAttachments' => {
                                                'class' => 'Paws::EC2::TransitGatewayAttachment',
                                                'type' => 'ArrayRef[EC2_TransitGatewayAttachment]'
                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGatewayAttachmentsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 TransitGatewayAttachments => ArrayRef[EC2_TransitGatewayAttachment]

Information about the attachments.


=head2 _request_id => Str


=cut

