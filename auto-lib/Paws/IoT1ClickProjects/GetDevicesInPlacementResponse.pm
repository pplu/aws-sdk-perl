
package Paws::IoT1ClickProjects::GetDevicesInPlacementResponse;
  use Moose;
  has Devices => (is => 'ro', isa => 'Paws::IoT1ClickProjects::DeviceMap', traits => ['NameInRequest'], request_name => 'devices', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::GetDevicesInPlacementResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Devices => L<Paws::IoT1ClickProjects::DeviceMap>

An object containing the devices (zero or more) within the placement.


=head2 _request_id => Str


=cut

