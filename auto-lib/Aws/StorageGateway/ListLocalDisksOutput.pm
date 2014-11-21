
package Aws::StorageGateway::ListLocalDisksOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Disks => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::Disk]');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
1;