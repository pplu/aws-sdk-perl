
package Aws::StorageGateway::ListLocalDisksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Disks => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::DiskInformation]');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
1;
