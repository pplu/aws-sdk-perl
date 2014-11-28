
package Paws::S3::HeadObjectOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has AcceptRanges => (is => 'ro', isa => 'Str');
  has CacheControl => (is => 'ro', isa => 'Str');
  has ContentDisposition => (is => 'ro', isa => 'Str');
  has ContentEncoding => (is => 'ro', isa => 'Str');
  has ContentLanguage => (is => 'ro', isa => 'Str');
  has ContentLength => (is => 'ro', isa => 'Int');
  has ContentType => (is => 'ro', isa => 'Str');
  has DeleteMarker => (is => 'ro', isa => 'Bool');
  has ETag => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has Expires => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata');
  has MissingMeta => (is => 'ro', isa => 'Int');
  has Restore => (is => 'ro', isa => 'Str');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str');

}
1;