# Generated from json/callresult_class.tt

package Paws::DirectConnect::VirtualGateways;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_VirtualGateway/;
  has VirtualGateways => (is => 'ro', isa => ArrayRef[DirectConnect_VirtualGateway]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VirtualGateways' => {
                                      'class' => 'Paws::DirectConnect::VirtualGateway',
                                      'type' => 'ArrayRef[DirectConnect_VirtualGateway]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'VirtualGateways' => 'virtualGateways'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::VirtualGateways

=head1 ATTRIBUTES


=head2 VirtualGateways => ArrayRef[DirectConnect_VirtualGateway]

The virtual private gateways.


=head2 _request_id => Str


=cut

1;