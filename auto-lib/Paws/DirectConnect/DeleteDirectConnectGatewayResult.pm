# Generated from json/callresult_class.tt

package Paws::DirectConnect::DeleteDirectConnectGatewayResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw/DirectConnect_DirectConnectGateway/;
  has DirectConnectGateway => (is => 'ro', isa => DirectConnect_DirectConnectGateway);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DirectConnectGateway' => {
                                           'class' => 'Paws::DirectConnect::DirectConnectGateway',
                                           'type' => 'DirectConnect_DirectConnectGateway'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DirectConnectGateway' => 'directConnectGateway'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteDirectConnectGatewayResult

=head1 ATTRIBUTES


=head2 DirectConnectGateway => DirectConnect_DirectConnectGateway

The Direct Connect gateway.


=head2 _request_id => Str


=cut

1;