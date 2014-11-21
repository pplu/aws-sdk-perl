
package Aws::StorageGateway::DescribeUploadBufferOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has UploadBufferAllocatedInBytes => (is => 'ro', isa => 'Num');
  has UploadBufferUsedInBytes => (is => 'ro', isa => 'Num');

}
1;