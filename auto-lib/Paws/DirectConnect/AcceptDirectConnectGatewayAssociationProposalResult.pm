# Generated from json/callresult_class.tt

package Paws::DirectConnect::AcceptDirectConnectGatewayAssociationProposalResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw/DirectConnect_DirectConnectGatewayAssociation/;
  has DirectConnectGatewayAssociation => (is => 'ro', isa => DirectConnect_DirectConnectGatewayAssociation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DirectConnectGatewayAssociation' => 'directConnectGatewayAssociation'
                     },
  'types' => {
               'DirectConnectGatewayAssociation' => {
                                                      'class' => 'Paws::DirectConnect::DirectConnectGatewayAssociation',
                                                      'type' => 'DirectConnect_DirectConnectGatewayAssociation'
                                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AcceptDirectConnectGatewayAssociationProposalResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAssociation => DirectConnect_DirectConnectGatewayAssociation




=head2 _request_id => Str


=cut

1;