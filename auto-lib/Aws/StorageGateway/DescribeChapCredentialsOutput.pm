
package Aws::StorageGateway::DescribeChapCredentialsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has ChapCredentials => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::ChapInfo]');

}
1;