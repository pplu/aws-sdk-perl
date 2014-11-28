
package Paws::S3::CompleteMultipartUploadOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Bucket => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

}
1;