
package Paws::S3::CreateMultipartUploadOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Bucket => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str');

}
1;