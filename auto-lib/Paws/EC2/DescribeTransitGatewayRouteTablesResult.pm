
package Paws::EC2::DescribeTransitGatewayRouteTablesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TransitGatewayRouteTable/;
  has NextToken => (is => 'ro', isa => Str);
  has TransitGatewayRouteTables => (is => 'ro', isa => ArrayRef[EC2_TransitGatewayRouteTable]);

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
               'TransitGatewayRouteTables' => {
                                                'class' => 'Paws::EC2::TransitGatewayRouteTable',
                                                'type' => 'ArrayRef[EC2_TransitGatewayRouteTable]'
                                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'TransitGatewayRouteTables' => 'transitGatewayRouteTables'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGatewayRouteTablesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 TransitGatewayRouteTables => ArrayRef[EC2_TransitGatewayRouteTable]

Information about the transit gateway route tables.


=head2 _request_id => Str


=cut

