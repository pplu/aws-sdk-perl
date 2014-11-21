
package Aws::StorageGateway::DescribeWorkingStorageOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has WorkingStorageAllocatedInBytes => (is => 'ro', isa => 'Num');
  has WorkingStorageUsedInBytes => (is => 'ro', isa => 'Num');

}
1;