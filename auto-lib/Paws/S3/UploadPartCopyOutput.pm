
package Paws::S3::UploadPartCopyOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has CopyPartResult => (is => 'ro', isa => 'Paws::S3::CopyPartResult');
  has CopySourceVersionId => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str');

}
1;