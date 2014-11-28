
package Paws::S3::PutObjectOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has ETag => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

}
1;