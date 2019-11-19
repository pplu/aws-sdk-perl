
package Paws::EC2::DeleteTransitGatewayRouteTableResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TransitGatewayRouteTable/;
  has TransitGatewayRouteTable => (is => 'ro', isa => EC2_TransitGatewayRouteTable);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransitGatewayRouteTable' => {
                                               'type' => 'EC2_TransitGatewayRouteTable',
                                               'class' => 'Paws::EC2::TransitGatewayRouteTable'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TransitGatewayRouteTable' => 'transitGatewayRouteTable'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTransitGatewayRouteTableResult

=head1 ATTRIBUTES


=head2 TransitGatewayRouteTable => EC2_TransitGatewayRouteTable

Information about the deleted transit gateway route table.


=head2 _request_id => Str


=cut

