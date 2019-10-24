# Generated from json/callresult_class.tt

package Paws::DirectConnect::CreateTransitVirtualInterfaceResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw/DirectConnect_VirtualInterface/;
  has VirtualInterface => (is => 'ro', isa => DirectConnect_VirtualInterface);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VirtualInterface' => {
                                       'class' => 'Paws::DirectConnect::VirtualInterface',
                                       'type' => 'DirectConnect_VirtualInterface'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'VirtualInterface' => 'virtualInterface'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateTransitVirtualInterfaceResult

=head1 ATTRIBUTES


=head2 VirtualInterface => DirectConnect_VirtualInterface




=head2 _request_id => Str


=cut

1;