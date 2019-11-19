
package Paws::EC2::GetTransitGatewayRouteTableAssociationsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TransitGatewayRouteTableAssociation/;
  has Associations => (is => 'ro', isa => ArrayRef[EC2_TransitGatewayRouteTableAssociation]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Associations' => 'associations'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Associations' => {
                                   'class' => 'Paws::EC2::TransitGatewayRouteTableAssociation',
                                   'type' => 'ArrayRef[EC2_TransitGatewayRouteTableAssociation]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetTransitGatewayRouteTableAssociationsResult

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[EC2_TransitGatewayRouteTableAssociation]

Information about the associations.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

