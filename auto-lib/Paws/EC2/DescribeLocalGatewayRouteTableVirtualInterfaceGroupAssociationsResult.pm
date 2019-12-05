
package Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult;
  use Moose;
  has LocalGatewayRouteTableVirtualInterfaceGroupAssociations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation]', request_name => 'localGatewayRouteTableVirtualInterfaceGroupAssociationSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult

=head1 ATTRIBUTES


=head2 LocalGatewayRouteTableVirtualInterfaceGroupAssociations => ArrayRef[L<Paws::EC2::LocalGatewayRouteTableVirtualInterfaceGroupAssociation>]

Information about the associations.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

