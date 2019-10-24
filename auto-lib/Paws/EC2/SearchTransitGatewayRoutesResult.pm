
package Paws::EC2::SearchTransitGatewayRoutesResult;
  use Moo;

  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::EC2::Types qw/EC2_TransitGatewayRoute/;
  has AdditionalRoutesAvailable => (is => 'ro', isa => Bool);
  has Routes => (is => 'ro', isa => ArrayRef[EC2_TransitGatewayRoute]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Routes' => {
                             'class' => 'Paws::EC2::TransitGatewayRoute',
                             'type' => 'ArrayRef[EC2_TransitGatewayRoute]'
                           },
               'AdditionalRoutesAvailable' => {
                                                'type' => 'Bool'
                                              }
             },
  'NameInRequest' => {
                       'Routes' => 'routeSet',
                       'AdditionalRoutesAvailable' => 'additionalRoutesAvailable'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SearchTransitGatewayRoutesResult

=head1 ATTRIBUTES


=head2 AdditionalRoutesAvailable => Bool

Indicates whether there are additional routes available.


=head2 Routes => ArrayRef[EC2_TransitGatewayRoute]

Information about the routes.


=head2 _request_id => Str


=cut

