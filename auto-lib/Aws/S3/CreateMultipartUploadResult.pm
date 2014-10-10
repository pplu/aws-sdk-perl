
package Aws::S3::CreateMultipartUploadResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'Bucket');
  has Key => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str');

}
1;