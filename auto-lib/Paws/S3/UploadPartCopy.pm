
package Paws::S3::UploadPartCopy {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has CopySource => (is => 'ro', isa => 'Str', required => 1);
  has CopySourceIfMatch => (is => 'ro', isa => 'Str');
  has CopySourceIfModifiedSince => (is => 'ro', isa => 'Str');
  has CopySourceIfNoneMatch => (is => 'ro', isa => 'Str');
  has CopySourceIfUnmodifiedSince => (is => 'ro', isa => 'Str');
  has CopySourceRange => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerKey => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has CopySourceSSEKMSKeyId => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', required => 1);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadPartCopy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::UploadPartCopyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UploadPartCopyResult');
}
1;