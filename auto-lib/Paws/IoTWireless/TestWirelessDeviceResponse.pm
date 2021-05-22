
package Paws::IoTWireless::TestWirelessDeviceResponse;
  use Moose;
  has Result => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::TestWirelessDeviceResponse

=head1 ATTRIBUTES


=head2 Result => Str

The result returned by the test.


=head2 _request_id => Str


=cut

