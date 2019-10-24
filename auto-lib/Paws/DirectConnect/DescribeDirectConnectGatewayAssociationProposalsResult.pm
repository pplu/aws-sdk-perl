# Generated from json/callresult_class.tt

package Paws::DirectConnect::DescribeDirectConnectGatewayAssociationProposalsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_DirectConnectGatewayAssociationProposal/;
  has DirectConnectGatewayAssociationProposals => (is => 'ro', isa => ArrayRef[DirectConnect_DirectConnectGatewayAssociationProposal]);
  has NextToken => (is => 'ro', isa => Str);

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
               'DirectConnectGatewayAssociationProposals' => {
                                                               'class' => 'Paws::DirectConnect::DirectConnectGatewayAssociationProposal',
                                                               'type' => 'ArrayRef[DirectConnect_DirectConnectGatewayAssociationProposal]'
                                                             }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DirectConnectGatewayAssociationProposals' => 'directConnectGatewayAssociationProposals'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeDirectConnectGatewayAssociationProposalsResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAssociationProposals => ArrayRef[DirectConnect_DirectConnectGatewayAssociationProposal]

Describes the Direct Connect gateway association proposals.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;