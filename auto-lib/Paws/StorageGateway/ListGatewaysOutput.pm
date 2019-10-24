# Generated from json/callresult_class.tt

package Paws::StorageGateway::ListGatewaysOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_GatewayInfo/;
  has Gateways => (is => 'ro', isa => ArrayRef[StorageGateway_GatewayInfo]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'Gateways' => {
                               'class' => 'Paws::StorageGateway::GatewayInfo',
                               'type' => 'ArrayRef[StorageGateway_GatewayInfo]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListGatewaysOutput

=head1 ATTRIBUTES


=head2 Gateways => ArrayRef[StorageGateway_GatewayInfo]

An array of GatewayInfo objects.


=head2 Marker => Str

Use the marker in your next request to fetch the next set of gateways
in the list. If there are no more gateways to list, this field does not
appear in the response.


=head2 _request_id => Str


=cut

1;