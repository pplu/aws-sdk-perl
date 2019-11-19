# Generated from json/callresult_class.tt

package Paws::DirectConnect::CreateDirectConnectGatewayAssociationProposalResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw/DirectConnect_DirectConnectGatewayAssociationProposal/;
  has DirectConnectGatewayAssociationProposal => (is => 'ro', isa => DirectConnect_DirectConnectGatewayAssociationProposal);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DirectConnectGatewayAssociationProposal' => {
                                                              'class' => 'Paws::DirectConnect::DirectConnectGatewayAssociationProposal',
                                                              'type' => 'DirectConnect_DirectConnectGatewayAssociationProposal'
                                                            }
             },
  'NameInRequest' => {
                       'DirectConnectGatewayAssociationProposal' => 'directConnectGatewayAssociationProposal'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateDirectConnectGatewayAssociationProposalResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAssociationProposal => DirectConnect_DirectConnectGatewayAssociationProposal

Information about the Direct Connect gateway proposal.


=head2 _request_id => Str


=cut

1;