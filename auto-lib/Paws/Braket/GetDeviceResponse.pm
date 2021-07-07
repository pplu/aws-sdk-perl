
package Paws::Braket::GetDeviceResponse;
  use Moose;
  has DeviceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceArn', required => 1);
  has DeviceCapabilities => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceCapabilities', required => 1);
  has DeviceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceName', required => 1);
  has DeviceStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceStatus', required => 1);
  has DeviceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceType', required => 1);
  has ProviderName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'providerName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::GetDeviceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceArn => Str

The ARN of the device.


=head2 B<REQUIRED> DeviceCapabilities => Str

Details about the capabilities of the device.


=head2 B<REQUIRED> DeviceName => Str

The name of the device.


=head2 B<REQUIRED> DeviceStatus => Str

The status of the device.

Valid values are: C<"ONLINE">, C<"OFFLINE">, C<"RETIRED">
=head2 B<REQUIRED> DeviceType => Str

The type of the device.

Valid values are: C<"QPU">, C<"SIMULATOR">
=head2 B<REQUIRED> ProviderName => Str

The name of the partner company for the device.


=head2 _request_id => Str


=cut

