
package Paws::IoT1ClickProjects::GetDevicesInPlacementResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickProjects::Types qw/IoT1ClickProjects_DeviceMap/;
  has Devices => (is => 'ro', isa => IoT1ClickProjects_DeviceMap, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Devices' => {
                              'type' => 'IoT1ClickProjects_DeviceMap',
                              'class' => 'Paws::IoT1ClickProjects::DeviceMap'
                            }
             },
  'NameInRequest' => {
                       'Devices' => 'devices'
                     },
  'IsRequired' => {
                    'Devices' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::GetDevicesInPlacementResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Devices => IoT1ClickProjects_DeviceMap

An object containing the devices (zero or more) within the placement.


=head2 _request_id => Str


=cut

