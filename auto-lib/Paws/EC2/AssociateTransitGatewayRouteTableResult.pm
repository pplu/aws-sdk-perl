
package Paws::EC2::AssociateTransitGatewayRouteTableResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TransitGatewayAssociation/;
  has Association => (is => 'ro', isa => EC2_TransitGatewayAssociation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Association' => {
                                  'type' => 'EC2_TransitGatewayAssociation',
                                  'class' => 'Paws::EC2::TransitGatewayAssociation'
                                }
             },
  'NameInRequest' => {
                       'Association' => 'association'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateTransitGatewayRouteTableResult

=head1 ATTRIBUTES


=head2 Association => EC2_TransitGatewayAssociation

The ID of the association.


=head2 _request_id => Str


=cut

