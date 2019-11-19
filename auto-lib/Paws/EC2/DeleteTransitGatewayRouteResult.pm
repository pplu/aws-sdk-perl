
package Paws::EC2::DeleteTransitGatewayRouteResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TransitGatewayRoute/;
  has Route => (is => 'ro', isa => EC2_TransitGatewayRoute);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Route' => 'route'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Route' => {
                            'type' => 'EC2_TransitGatewayRoute',
                            'class' => 'Paws::EC2::TransitGatewayRoute'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTransitGatewayRouteResult

=head1 ATTRIBUTES


=head2 Route => EC2_TransitGatewayRoute

Information about the route.


=head2 _request_id => Str


=cut

