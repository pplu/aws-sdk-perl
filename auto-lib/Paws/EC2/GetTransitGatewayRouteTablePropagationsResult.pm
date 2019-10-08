
package Paws::EC2::GetTransitGatewayRouteTablePropagationsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TransitGatewayRouteTablePropagation/;
  has NextToken => (is => 'ro', isa => Str);
  has TransitGatewayRouteTablePropagations => (is => 'ro', isa => ArrayRef[EC2_TransitGatewayRouteTablePropagation]);

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
               'TransitGatewayRouteTablePropagations' => {
                                                           'class' => 'Paws::EC2::TransitGatewayRouteTablePropagation',
                                                           'type' => 'ArrayRef[EC2_TransitGatewayRouteTablePropagation]'
                                                         }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'TransitGatewayRouteTablePropagations' => 'transitGatewayRouteTablePropagations'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetTransitGatewayRouteTablePropagationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 TransitGatewayRouteTablePropagations => ArrayRef[EC2_TransitGatewayRouteTablePropagation]

Information about the route table propagations.


=head2 _request_id => Str


=cut

