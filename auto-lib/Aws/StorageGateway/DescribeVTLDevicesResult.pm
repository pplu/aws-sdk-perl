
package Aws::StorageGateway::DescribeVTLDevicesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VTLDevices => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::VTLDevice]');

}
1;
