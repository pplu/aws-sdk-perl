# Generated from json/callresult_class.tt

package Paws::DirectConnect::VirtualInterfaces;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_VirtualInterface/;
  has VirtualInterfaces => (is => 'ro', isa => ArrayRef[DirectConnect_VirtualInterface]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VirtualInterfaces' => {
                                        'type' => 'ArrayRef[DirectConnect_VirtualInterface]',
                                        'class' => 'Paws::DirectConnect::VirtualInterface'
                                      }
             },
  'NameInRequest' => {
                       'VirtualInterfaces' => 'virtualInterfaces'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::VirtualInterfaces

=head1 ATTRIBUTES


=head2 VirtualInterfaces => ArrayRef[DirectConnect_VirtualInterface]

The virtual interfaces


=head2 _request_id => Str


=cut

1;