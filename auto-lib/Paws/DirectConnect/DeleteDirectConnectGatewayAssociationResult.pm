# Generated from json/callresult_class.tt

package Paws::DirectConnect::DeleteDirectConnectGatewayAssociationResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw/DirectConnect_DirectConnectGatewayAssociation/;
  has DirectConnectGatewayAssociation => (is => 'ro', isa => DirectConnect_DirectConnectGatewayAssociation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DirectConnectGatewayAssociation' => {
                                                      'class' => 'Paws::DirectConnect::DirectConnectGatewayAssociation',
                                                      'type' => 'DirectConnect_DirectConnectGatewayAssociation'
                                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DirectConnectGatewayAssociation' => 'directConnectGatewayAssociation'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteDirectConnectGatewayAssociationResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAssociation => DirectConnect_DirectConnectGatewayAssociation

Information about the deleted association.


=head2 _request_id => Str


=cut

1;