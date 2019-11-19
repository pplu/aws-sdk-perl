# Generated from json/callresult_class.tt

package Paws::DirectConnect::DescribeDirectConnectGatewaysResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_DirectConnectGateway/;
  has DirectConnectGateways => (is => 'ro', isa => ArrayRef[DirectConnect_DirectConnectGateway]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DirectConnectGateways' => 'directConnectGateways'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DirectConnectGateways' => {
                                            'class' => 'Paws::DirectConnect::DirectConnectGateway',
                                            'type' => 'ArrayRef[DirectConnect_DirectConnectGateway]'
                                          },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeDirectConnectGatewaysResult

=head1 ATTRIBUTES


=head2 DirectConnectGateways => ArrayRef[DirectConnect_DirectConnectGateway]

The Direct Connect gateways.


=head2 NextToken => Str

The token to retrieve the next page.


=head2 _request_id => Str


=cut

1;