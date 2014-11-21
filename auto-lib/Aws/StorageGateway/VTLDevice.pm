package Aws::StorageGateway::VTLDevice {
  use Moose;
  has DeviceiSCSIAttributes => (is => 'ro', isa => 'Aws::StorageGateway::DeviceiSCSIAttributes');
  has VTLDeviceARN => (is => 'ro', isa => 'Str');
  has VTLDeviceProductIdentifier => (is => 'ro', isa => 'Str');
  has VTLDeviceType => (is => 'ro', isa => 'Str');
  has VTLDeviceVendor => (is => 'ro', isa => 'Str');
}
1;
