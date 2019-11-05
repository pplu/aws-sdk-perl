
package Paws::IoT1ClickDevices::UnclaimDeviceResponse;
  use Moose;
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::UnclaimDeviceResponse

=head1 ATTRIBUTES


=head2 State => Str

The device's final claim state.


=head2 _request_id => Str


=cut

