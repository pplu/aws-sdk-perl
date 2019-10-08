
package Paws::EC2::DeleteNatGatewayResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has NatGatewayId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NatGatewayId' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NatGatewayId' => 'natGatewayId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteNatGatewayResult

=head1 ATTRIBUTES


=head2 NatGatewayId => Str

The ID of the NAT gateway.


=head2 _request_id => Str


=cut

