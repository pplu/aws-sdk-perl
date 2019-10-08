
package Paws::EC2::CreateNatGatewayResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_NatGateway/;
  has ClientToken => (is => 'ro', isa => Str);
  has NatGateway => (is => 'ro', isa => EC2_NatGateway);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'NatGateway' => {
                                 'class' => 'Paws::EC2::NatGateway',
                                 'type' => 'EC2_NatGateway'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'NatGateway' => 'natGateway'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNatGatewayResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure the idempotency of the
request. Only returned if a client token was provided in the request.


=head2 NatGateway => EC2_NatGateway

Information about the NAT gateway.


=head2 _request_id => Str


=cut

