package Paws::DeviceFarm::AccountSettings {
  use Moose;
  has awsAccountNumber => (is => 'ro', isa => 'Str');
  has unmeteredDevices => (is => 'ro', isa => 'Paws::DeviceFarm::PurchasedDevicesMap');
}
1;
