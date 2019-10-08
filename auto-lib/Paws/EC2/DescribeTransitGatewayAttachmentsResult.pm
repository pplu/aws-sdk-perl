
package Paws::EC2::DescribeTransitGatewayAttachmentsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TransitGatewayAttachment/;
  has NextToken => (is => 'ro', isa => Str);
  has TransitGatewayAttachments => (is => 'ro', isa => ArrayRef[EC2_TransitGatewayAttachment]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TransitGatewayAttachments' => {
                                                'class' => 'Paws::EC2::TransitGatewayAttachment',
                                                'type' => 'ArrayRef[EC2_TransitGatewayAttachment]'
                                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'TransitGatewayAttachments' => 'transitGatewayAttachments'
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

