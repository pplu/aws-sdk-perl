# Generated from json/callresult_class.tt

package Paws::DirectConnect::DeleteDirectConnectGatewayAssociationProposalResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw/DirectConnect_DirectConnectGatewayAssociationProposal/;
  has DirectConnectGatewayAssociationProposal => (is => 'ro', isa => DirectConnect_DirectConnectGatewayAssociationProposal);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DirectConnectGatewayAssociationProposal' => 'directConnectGatewayAssociationProposal'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DirectConnectGatewayAssociationProposal' => {
                                                              'class' => 'Paws::DirectConnect::DirectConnectGatewayAssociationProposal',
                                                              'type' => 'DirectConnect_DirectConnectGatewayAssociationProposal'
                                                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteDirectConnectGatewayAssociationProposalResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAssociationProposal => DirectConnect_DirectConnectGatewayAssociationProposal

The ID of the associated gateway.


=head2 _request_id => Str


=cut

1;