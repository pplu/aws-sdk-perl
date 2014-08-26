package Aws::StorageGateway::DeviceiSCSIAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has ChapEnabled => (is => 'ro', isa => 'Bool');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has NetworkInterfacePort => (is => 'ro', isa => 'Int');
  has TargetARN => (is => 'ro', isa => 'Str');
}
1
