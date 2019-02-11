
package Paws::EC2::DescribeTransitGatewayRouteTablesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has TransitGatewayRouteTables => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TransitGatewayRouteTable]', request_name => 'transitGatewayRouteTables', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGatewayRouteTablesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 TransitGatewayRouteTables => ArrayRef[L<Paws::EC2::TransitGatewayRouteTable>]

Information about the transit gateway route tables.


=head2 _request_id => Str


=cut

