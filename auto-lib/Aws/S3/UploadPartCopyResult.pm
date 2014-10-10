
package Aws::S3::UploadPartCopyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CopyPartResult => (is => 'ro', isa => 'Aws::S3::CopyPartResult');
  has CopySourceVersionId => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');

}
1;