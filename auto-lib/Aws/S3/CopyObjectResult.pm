
package Aws::S3::CopyObjectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CopyObjectResult => (is => 'ro', isa => 'Aws::S3::CopyObjectResult');
  has CopySourceVersionId => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');

}
1;