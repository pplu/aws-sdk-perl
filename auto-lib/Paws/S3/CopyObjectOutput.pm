
package Paws::S3::CopyObjectOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has CopyObjectResult => (is => 'ro', isa => 'Paws::S3::CopyObjectResult');
  has CopySourceVersionId => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str');

}
1;