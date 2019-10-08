
package Paws::EC2::CreateTransitGatewayResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TransitGateway/;
  has TransitGateway => (is => 'ro', isa => EC2_TransitGateway);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TransitGateway' => {
                                     'class' => 'Paws::EC2::TransitGateway',
                                     'type' => 'EC2_TransitGateway'
                                   }
             },
  'NameInRequest' => {
                       'TransitGateway' => 'transitGateway'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTransitGatewayResult

=head1 ATTRIBUTES


=head2 TransitGateway => EC2_TransitGateway

Information about the transit gateway.


=head2 _request_id => Str


=cut

