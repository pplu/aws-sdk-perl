# Generated from json/callresult_class.tt

package Paws::DirectConnect::DescribeDirectConnectGatewayAssociationsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_DirectConnectGatewayAssociation/;
  has DirectConnectGatewayAssociations => (is => 'ro', isa => ArrayRef[DirectConnect_DirectConnectGatewayAssociation]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DirectConnectGatewayAssociations' => {
                                                       'class' => 'Paws::DirectConnect::DirectConnectGatewayAssociation',
                                                       'type' => 'ArrayRef[DirectConnect_DirectConnectGatewayAssociation]'
                                                     },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DirectConnectGatewayAssociations' => 'directConnectGatewayAssociations',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeDirectConnectGatewayAssociationsResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAssociations => ArrayRef[DirectConnect_DirectConnectGatewayAssociation]

Information about the associations.


=head2 NextToken => Str

The token to retrieve the next page.


=head2 _request_id => Str


=cut

1;