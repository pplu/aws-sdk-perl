
package Paws::StorageGateway::DescribeChapCredentialsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has ChapCredentials => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::ChapInfo]');

}
1;