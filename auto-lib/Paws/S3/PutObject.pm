
package Paws::S3::PutObject;
  use Moose;
  has ACL => (is => 'ro', isa => 'Str', header_name => 'x-amz-acl', traits => ['ParamInHeader']);
  has Body => (is => 'ro', isa => 'Str', traits => ['ParamInBody']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has CacheControl => (is => 'ro', isa => 'Str', header_name => 'Cache-Control', traits => ['ParamInHeader']);
  has ContentDisposition => (is => 'ro', isa => 'Str', header_name => 'Content-Disposition', traits => ['ParamInHeader']);
  has ContentEncoding => (is => 'ro', isa => 'Str', header_name => 'Content-Encoding', traits => ['ParamInHeader']);
  has ContentLanguage => (is => 'ro', isa => 'Str', header_name => 'Content-Language', traits => ['ParamInHeader']);
  has ContentLength => (is => 'ro', isa => 'Int', header_name => 'Content-Length', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ContentType => (is => 'ro', isa => 'Str', header_name => 'Content-Type', traits => ['ParamInHeader']);
  has Expires => (is => 'ro', isa => 'Str', header_name => 'Expires', traits => ['ParamInHeader']);
  has GrantFullControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-full-control', traits => ['ParamInHeader']);
  has GrantRead => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read', traits => ['ParamInHeader']);
  has GrantReadACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read-acp', traits => ['ParamInHeader']);
  has GrantWriteACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write-acp', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata', header_prefix => 'x-amz-meta-', traits => ['ParamInHeaders']);
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-legal-hold', traits => ['ParamInHeader']);
  has ObjectLockMode => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-mode', traits => ['ParamInHeader']);
  has ObjectLockRetainUntilDate => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-retain-until-date', traits => ['ParamInHeader']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSEncryptionContext => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-context', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);
  has StorageClass => (is => 'ro', isa => 'Str', header_name => 'x-amz-storage-class', traits => ['ParamInHeader']);
  has Tagging => (is => 'ro', isa => 'Str', header_name => 'x-amz-tagging', traits => ['ParamInHeader']);
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str', header_name => 'x-amz-website-redirect-location', traits => ['ParamInHeader']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::PutObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _stream_param => (is => 'ro', default => 'Body');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObject - Arguments for method PutObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $PutObjectOutput = $s3->PutObject(
      Bucket             => 'MyBucketName',
      Key                => 'MyObjectKey',
      ACL                => 'private',                 # OPTIONAL
      Body               => 'BlobBody',                # OPTIONAL
      CacheControl       => 'MyCacheControl',          # OPTIONAL
      ContentDisposition => 'MyContentDisposition',    # OPTIONAL
      ContentEncoding    => 'MyContentEncoding',       # OPTIONAL
      ContentLanguage    => 'MyContentLanguage',       # OPTIONAL
      ContentLength      => 1,                         # OPTIONAL
      ContentMD5         => 'MyContentMD5',            # OPTIONAL
      ContentType        => 'MyContentType',           # OPTIONAL
      Expires            => '1970-01-01T01:00:00',     # OPTIONAL
      GrantFullControl   => 'MyGrantFullControl',      # OPTIONAL
      GrantRead          => 'MyGrantRead',             # OPTIONAL
      GrantReadACP       => 'MyGrantReadACP',          # OPTIONAL
      GrantWriteACP      => 'MyGrantWriteACP',         # OPTIONAL
      Metadata => { 'MyMetadataKey' => 'MyMetadataValue', },    # OPTIONAL
      ObjectLockLegalHoldStatus => 'ON',                        # OPTIONAL
      ObjectLockMode            => 'GOVERNANCE',                # OPTIONAL
      ObjectLockRetainUntilDate => '1970-01-01T01:00:00',       # OPTIONAL
      RequestPayer              => 'requester',                 # OPTIONAL
      SSECustomerAlgorithm      => 'MySSECustomerAlgorithm',    # OPTIONAL
      SSECustomerKey            => 'MySSECustomerKey',          # OPTIONAL
      SSECustomerKeyMD5         => 'MySSECustomerKeyMD5',       # OPTIONAL
      SSEKMSEncryptionContext   => 'MySSEKMSEncryptionContext', # OPTIONAL
      SSEKMSKeyId               => 'MySSEKMSKeyId',             # OPTIONAL
      ServerSideEncryption      => 'AES256',                    # OPTIONAL
      StorageClass              => 'STANDARD',                  # OPTIONAL
      Tagging                   => 'MyTaggingHeader',           # OPTIONAL
      WebsiteRedirectLocation   => 'MyWebsiteRedirectLocation', # OPTIONAL
    );

    # Results:
    my $ETag                    = $PutObjectOutput->ETag;
    my $Expiration              = $PutObjectOutput->Expiration;
    my $RequestCharged          = $PutObjectOutput->RequestCharged;
    my $SSECustomerAlgorithm    = $PutObjectOutput->SSECustomerAlgorithm;
    my $SSECustomerKeyMD5       = $PutObjectOutput->SSECustomerKeyMD5;
    my $SSEKMSEncryptionContext = $PutObjectOutput->SSEKMSEncryptionContext;
    my $SSEKMSKeyId             = $PutObjectOutput->SSEKMSKeyId;
    my $ServerSideEncryption    = $PutObjectOutput->ServerSideEncryption;
    my $VersionId               = $PutObjectOutput->VersionId;

    # Returns a L<Paws::S3::PutObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutObject>

=head1 ATTRIBUTES


=head2 ACL => Str

The canned ACL to apply to the object. For more information, see Canned
ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL).

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"aws-exec-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">

=head2 Body => Str

Object data.



=head2 B<REQUIRED> Bucket => Str

Bucket name to which the PUT operation was initiated.

When using this API with an access point, you must direct requests to
the access point hostname. The access point hostname takes the form
I<AccessPointName>-I<AccountId>.s3-accesspoint.I<Region>.amazonaws.com.
When using this operation using an access point through the AWS SDKs,
you provide the access point ARN in place of the bucket name. For more
information about access point ARNs, see Using Access Points
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html)
in the I<Amazon Simple Storage Service Developer Guide>.



=head2 CacheControl => Str

Can be used to specify caching behavior along the request/reply chain.
For more information, see
http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
(http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9).



=head2 ContentDisposition => Str

Specifies presentational information for the object. For more
information, see
http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1
(http://www.w3.org/Protocols/rfc2616/rfc2616-sec19.html#sec19.5.1).



=head2 ContentEncoding => Str

Specifies what content encodings have been applied to the object and
thus what decoding mechanisms must be applied to obtain the media-type
referenced by the Content-Type header field. For more information, see
http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11
(http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11).



=head2 ContentLanguage => Str

The language the content is in.



=head2 ContentLength => Int

Size of the body in bytes. This parameter is useful when the size of
the body cannot be determined automatically. For more information, see
http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.13
(http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.13).



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the message (without the
headers) according to RFC 1864. This header can be used as a message
integrity check to verify that the data is the same data that was
originally sent. Although it is optional, we recommend using the
Content-MD5 mechanism as an end-to-end integrity check. For more
information about REST request authentication, see REST Authentication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html).



=head2 ContentType => Str

A standard MIME type describing the format of the contents. For more
information, see
http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17
(http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).



=head2 Expires => Str

The date and time at which the object is no longer cacheable. For more
information, see
http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.21
(http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.21).



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

Object key for which the PUT operation was initiated.



=head2 Metadata => L<Paws::S3::Metadata>

A map of metadata to store with the object in S3.



=head2 ObjectLockLegalHoldStatus => Str

Specifies whether a legal hold will be applied to this object. For more
information about S3 Object Lock, see Object Lock
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

The Object Lock mode that you want to apply to this object.

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

The date and time when you want this object's Object Lock to expire.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

The server-side encryption algorithm used when storing this object in
Amazon S3 (for example, AES256, aws:kms).

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSECustomerAlgorithm => Str

Specifies the algorithm to use to when encrypting the object (for
example, AES256).



=head2 SSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded; Amazon S3 does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
C<x-amz-server-side-encryption-customer-algorithm> header.



=head2 SSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.



=head2 SSEKMSEncryptionContext => Str

Specifies the AWS KMS Encryption Context to use for object encryption.
The value of this header is a base64-encoded UTF-8 string holding JSON
with the encryption context key-value pairs.



=head2 SSEKMSKeyId => Str

If C<x-amz-server-side-encryption> is present and has the value of
C<aws:kms>, this header specifies the ID of the AWS Key Management
Service (AWS KMS) symmetrical customer managed customer master key
(CMK) that was used for the object.

If the value of C<x-amz-server-side-encryption> is C<aws:kms>, this
header specifies the ID of the symmetric customer managed AWS KMS CMK
that will be used for the object. If you specify
C<x-amz-server-side-encryption:aws:kms>, but do not provideC<
x-amz-server-side-encryption-aws-kms-key-id>, Amazon S3 uses the AWS
managed CMK in AWS to protect the data.



=head2 StorageClass => Str

If you don't specify, Standard is the default storage class. Amazon S3
supports other storage classes.

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">

=head2 Tagging => Str

The tag-set for the object. The tag-set must be encoded as URL Query
parameters. (For example, "Key1=Value1")



=head2 WebsiteRedirectLocation => Str

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata. For
information about object metadata, see Object Key and Metadata
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html).

In the following example, the request header sets the redirect to an
object (anotherPage.html) in the same bucket:

C<x-amz-website-redirect-location: /anotherPage.html>

In the following example, the request header sets the object redirect
to another website:

C<x-amz-website-redirect-location: http://www.example.com/>

For more information about website hosting in Amazon S3, see Hosting
Websites on Amazon S3
(https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html)
and How to Configure Website Page Redirects
(https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

