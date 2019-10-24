
package Paws::ApiGateway::GatewayResponses;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_GatewayResponse/;
  has Items => (is => 'ro', isa => ArrayRef[ApiGateway_GatewayResponse]);
  has Position => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Position' => {
                               'type' => 'Str'
                             },
               'Items' => {
                            'class' => 'Paws::ApiGateway::GatewayResponse',
                            'type' => 'ArrayRef[ApiGateway_GatewayResponse]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Position' => 'position',
                       'Items' => 'item'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GatewayResponses

=head1 ATTRIBUTES


=head2 Items => ArrayRef[ApiGateway_GatewayResponse]

Returns the entire collection, because of no pagination support.


=head2 Position => Str




=head2 _request_id => Str


=cut

