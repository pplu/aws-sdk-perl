
package Paws::EC2::DescribeRouteTablesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_RouteTable/;
  has NextToken => (is => 'ro', isa => Str);
  has RouteTables => (is => 'ro', isa => ArrayRef[EC2_RouteTable]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'RouteTables' => {
                                  'class' => 'Paws::EC2::RouteTable',
                                  'type' => 'ArrayRef[EC2_RouteTable]'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RouteTables' => 'routeTableSet',
                       'NextToken' => 'nextToken'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeRouteTablesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 RouteTables => ArrayRef[EC2_RouteTable]

Information about one or more route tables.


=head2 _request_id => Str


=cut

