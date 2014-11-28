
package Paws::S3::CopyObject {
  use Moose;
  has ACL => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has CacheControl => (is => 'ro', isa => 'Str');
  has ContentDisposition => (is => 'ro', isa => 'Str');
  has ContentEncoding => (is => 'ro', isa => 'Str');
  has ContentLanguage => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has CopySource => (is => 'ro', isa => 'Str', required => 1);
  has CopySourceIfMatch => (is => 'ro', isa => 'Str');
  has CopySourceIfModifiedSince => (is => 'ro', isa => 'Str');
  has CopySourceIfNoneMatch => (is => 'ro', isa => 'Str');
  has CopySourceIfUnmodifiedSince => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerKey => (is => 'ro', isa => 'Str');
  has CopySourceSSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has CopySourceSSEKMSKeyId => (is => 'ro', isa => 'Str');
  has Expires => (is => 'ro', isa => 'Str');
  has GrantFullControl => (is => 'ro', isa => 'Str');
  has GrantRead => (is => 'ro', isa => 'Str');
  has GrantReadACP => (is => 'ro', isa => 'Str');
  has GrantWriteACP => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata');
  has MetadataDirective => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has StorageClass => (is => 'ro', isa => 'Str');
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyObject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CopyObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyObjectResult');
}
1;