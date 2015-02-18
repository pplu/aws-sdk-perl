
package Paws::S3::PutObject {
  use Moose;
  has ACL => (is => 'ro', isa => 'Str');
  has Body => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has CacheControl => (is => 'ro', isa => 'Str');
  has ContentDisposition => (is => 'ro', isa => 'Str');
  has ContentEncoding => (is => 'ro', isa => 'Str');
  has ContentLanguage => (is => 'ro', isa => 'Str');
  has ContentLength => (is => 'ro', isa => 'Int');
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has Expires => (is => 'ro', isa => 'Str');
  has GrantFullControl => (is => 'ro', isa => 'Str');
  has GrantRead => (is => 'ro', isa => 'Str');
  has GrantReadACP => (is => 'ro', isa => 'Str');
  has GrantWriteACP => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata');
  has ServerSideEncryption => (is => 'ro', isa => 'Str');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str');
  has StorageClass => (is => 'ro', isa => 'Str');
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::PutObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutObjectResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectOutput

=head1 ATTRIBUTES

=head2 ACL => Str

  

The canned ACL to apply to the object.









=head2 Body => Str

  

Object data.









=head2 B<REQUIRED> Bucket => Str

  
=head2 CacheControl => Str

  

Specifies caching behavior along the request/reply chain.









=head2 ContentDisposition => Str

  

Specifies presentational information for the object.









=head2 ContentEncoding => Str

  

Specifies what content encodings have been applied to the object and
thus what decoding mechanisms must be applied to obtain the media-type
referenced by the Content-Type header field.









=head2 ContentLanguage => Str

  

The language the content is in.









=head2 ContentLength => Int

  

Size of the body in bytes. This parameter is useful when the size of
the body cannot be determined automatically.









=head2 ContentMD5 => Str

  
=head2 ContentType => Str

  

A standard MIME type describing the format of the object data.









=head2 Expires => Str

  

The date and time at which the object is no longer cacheable.









=head2 GrantFullControl => Str

  

Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the
object.









=head2 GrantRead => Str

  

Allows grantee to read the object data and its metadata.









=head2 GrantReadACP => Str

  

Allows grantee to read the object ACL.









=head2 GrantWriteACP => Str

  

Allows grantee to write the ACL for the applicable object.









=head2 B<REQUIRED> Key => Str

  
=head2 Metadata => Paws::S3::Metadata

  

A map of metadata to store with the object in S3.









=head2 ServerSideEncryption => Str

  

The Server-side encryption algorithm used when storing this object in
S3 (e.g., AES256, aws:kms).









=head2 SSECustomerAlgorithm => Str

  

Specifies the algorithm to use to when encrypting the object (e.g.,
AES256, aws:kms).









=head2 SSECustomerKey => Str

  

Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded; Amazon does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
x-amz-server-side-encryption-customer-algorithm header.









=head2 SSECustomerKeyMD5 => Str

  

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure the encryption key was transmitted without error.









=head2 SSEKMSKeyId => Str

  

Specifies the AWS KMS key ID to use for object encryption. All GET and
PUT requests for an object protected by AWS KMS will fail if not made
via SSL or using SigV4. Documentation on configuring any of the
officially supported AWS SDKs and CLI can be found at
http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html









=head2 StorageClass => Str

  

The type of storage to use for the object. Defaults to 'STANDARD'.









=head2 WebsiteRedirectLocation => Str

  

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata.











=cut

