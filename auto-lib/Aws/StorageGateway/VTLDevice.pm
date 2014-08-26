package Aws::StorageGateway::VTLDevice {
  use Moose;
  with ('AWS::API::ResultParser');
  has DeviceiSCSIAttributes => (is => 'ro', isa => 'Aws::StorageGateway::DeviceiSCSIAttributes');
  has VTLDeviceARN => (is => 'ro', isa => 'Str');
}
1
