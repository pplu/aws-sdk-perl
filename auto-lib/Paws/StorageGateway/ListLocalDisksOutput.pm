
package Paws::StorageGateway::ListLocalDisksOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Disks => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Disk]');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
1;