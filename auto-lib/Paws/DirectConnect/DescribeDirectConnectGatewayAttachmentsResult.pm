# Generated from json/callresult_class.tt

package Paws::DirectConnect::DescribeDirectConnectGatewayAttachmentsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_DirectConnectGatewayAttachment/;
  has DirectConnectGatewayAttachments => (is => 'ro', isa => ArrayRef[DirectConnect_DirectConnectGatewayAttachment]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DirectConnectGatewayAttachments' => {
                                                      'class' => 'Paws::DirectConnect::DirectConnectGatewayAttachment',
                                                      'type' => 'ArrayRef[DirectConnect_DirectConnectGatewayAttachment]'
                                                    },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DirectConnectGatewayAttachments' => 'directConnectGatewayAttachments',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeDirectConnectGatewayAttachmentsResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAttachments => ArrayRef[DirectConnect_DirectConnectGatewayAttachment]

The attachments.


=head2 NextToken => Str

The token to retrieve the next page.


=head2 _request_id => Str


=cut

1;