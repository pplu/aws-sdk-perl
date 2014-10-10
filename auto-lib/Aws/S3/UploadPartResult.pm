
package Aws::S3::UploadPartResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ETag => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');

}
1;