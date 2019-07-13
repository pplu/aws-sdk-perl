
package Paws::EC2::DescribeRouteTablesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has RouteTables => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RouteTable]', request_name => 'routeTableSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeRouteTablesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 RouteTables => ArrayRef[L<Paws::EC2::RouteTable>]

Information about one or more route tables.


=head2 _request_id => Str


=cut

