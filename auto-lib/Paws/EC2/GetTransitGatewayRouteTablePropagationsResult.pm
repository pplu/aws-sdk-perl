
package Paws::EC2::GetTransitGatewayRouteTablePropagationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has TransitGatewayRouteTablePropagations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TransitGatewayRouteTablePropagation]', request_name => 'transitGatewayRouteTablePropagations', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetTransitGatewayRouteTablePropagationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 TransitGatewayRouteTablePropagations => ArrayRef[L<Paws::EC2::TransitGatewayRouteTablePropagation>]

Information about the route table propagations.


=head2 _request_id => Str


=cut

