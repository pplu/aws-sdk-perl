
package Paws::EC2::DisableTransitGatewayRouteTablePropagationResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TransitGatewayPropagation/;
  has Propagation => (is => 'ro', isa => EC2_TransitGatewayPropagation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Propagation' => 'propagation'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Propagation' => {
                                  'type' => 'EC2_TransitGatewayPropagation',
                                  'class' => 'Paws::EC2::TransitGatewayPropagation'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableTransitGatewayRouteTablePropagationResult

=head1 ATTRIBUTES


=head2 Propagation => EC2_TransitGatewayPropagation

Information about route propagation.


=head2 _request_id => Str


=cut

