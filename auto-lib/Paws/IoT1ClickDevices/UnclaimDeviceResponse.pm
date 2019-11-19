
package Paws::IoT1ClickDevices::UnclaimDeviceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickDevices::Types qw//;
  has State => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'State' => 'state'
                     },
  'types' => {
               'State' => {
                            'type' => 'Str'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::UnclaimDeviceResponse

=head1 ATTRIBUTES


=head2 State => Str

The device's final claim state.


=head2 _request_id => Str


=cut

