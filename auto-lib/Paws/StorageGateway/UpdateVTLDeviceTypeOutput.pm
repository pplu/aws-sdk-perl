# Generated from json/callresult_class.tt

package Paws::StorageGateway::UpdateVTLDeviceTypeOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has VTLDeviceARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VTLDeviceARN' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateVTLDeviceTypeOutput

=head1 ATTRIBUTES


=head2 VTLDeviceARN => Str

The Amazon Resource Name (ARN) of the medium changer you have selected.


=head2 _request_id => Str


=cut

1;