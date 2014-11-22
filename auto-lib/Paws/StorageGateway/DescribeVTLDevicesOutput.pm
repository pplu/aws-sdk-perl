
package Paws::StorageGateway::DescribeVTLDevicesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VTLDevices => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::VTLDevice]');

}
1;