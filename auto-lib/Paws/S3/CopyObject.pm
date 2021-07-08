
package Paws::S3::CopyObject;
  use Moose;
  has ACL => (is => 'ro', isa => 'Str', header_name => 'x-amz-acl', traits => ['ParamInHeader']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has CacheControl => (is => 'ro', isa => 'Str', header_name => 'Cache-Control', traits => ['ParamInHeader']);
  has ContentDisposition => (is => 'ro', isa => 'Str', header_name => 'Content-Disposition', traits => ['ParamInHeader']);
  has ContentEncoding => (is => 'ro', isa => 'Str', header_name => 'Content-Encoding', traits => ['ParamInHeader']);
  has ContentLanguage => (is => 'ro', isa => 'Str', header_name => 'Content-Language', traits => ['ParamInHeader']);
  has ContentType => (is => 'ro', isa => 'Str', header_name => 'Content-Type', traits => ['ParamInHeader']);
  has CopySource => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source', traits => ['ParamInHeader'], required => 1);
  has CopySourceIfMatch => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-match', traits => ['ParamInHeader']);
  has CopySourceIfModifiedSince => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-modified-since', traits => ['ParamInHeader']);
  has CopySourceIfNoneMatch => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-none-match', traits => ['ParamInHeader']);
  has CopySourceIfUnmodifiedSince => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-unmodified-since', traits => ['ParamInHeader']);
  has CopySourceSSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has CopySourceSSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has CopySourceSSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has ExpectedSourceBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-source-expected-bucket-owner', traits => ['ParamInHeader']);
  has Expires => (is => 'ro', isa => 'Str', header_name => 'Expires', traits => ['ParamInHeader']);
  has GrantFullControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-full-control', traits => ['ParamInHeader']);
  has GrantRead => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read', traits => ['ParamInHeader']);
  has GrantReadACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read-acp', traits => ['ParamInHeader']);
  has GrantWriteACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write-acp', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata', header_prefix => 'x-amz-meta-', traits => ['ParamInHeaders']);
  has MetadataDirective => (is => 'ro', isa => 'Str', header_name => 'x-amz-metadata-directive', traits => ['ParamInHeader']);
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
  has TaggingDirective => (is => 'ro', isa => 'Str', header_name => 'x-amz-tagging-directive', traits => ['ParamInHeader']);
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str', header_name => 'x-amz-website-redirect-location', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CopyObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CopyObject - Arguments for method CopyObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method CopyObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To copy an object
    # The following example copies an object from one bucket to another.
    my $CopyObjectOutput = $s3->CopyObject(
      'Bucket'     => 'destinationbucket',
      'CopySource' => '/sourcebucket/HappyFacejpg',
      'Key'        => 'HappyFaceCopyjpg'
    );

    # Results:
    my $CopyObjectResult = $CopyObjectOutput->CopyObjectResult;

    # Returns a L<Paws::S3::CopyObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/CopyObject>

=head1 ATTRIBUTES


=head2 ACL => Str

The canned ACL to apply to the object.

This action is not supported by Amazon S3 on Outposts.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"aws-exec-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">

=head2 B<REQUIRED> Bucket => Str

The name of the destination bucket.

When using this action with an access point, you must direct requests
to the access point hostname. The access point hostname takes the form
I<AccessPointName>-I<AccountId>.s3-accesspoint.I<Region>.amazonaws.com.
When using this action with an access point through the AWS SDKs, you
provide the access point ARN in place of the bucket name. For more
information about access point ARNs, see Using access points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html)
in the I<Amazon S3 User Guide>.

When using this action with Amazon S3 on Outposts, you must direct
requests to the S3 on Outposts hostname. The S3 on Outposts hostname
takes the form
I<AccessPointName>-I<AccountId>.I<outpostID>.s3-outposts.I<Region>.amazonaws.com.
When using this action using S3 on Outposts through the AWS SDKs, you
provide the Outposts bucket ARN in place of the bucket name. For more
information about S3 on Outposts ARNs, see Using S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.



=head2 BucketKeyEnabled => Bool

Specifies whether Amazon S3 should use an S3 Bucket Key for object
encryption with server-side encryption using AWS KMS (SSE-KMS). Setting
this header to C<true> causes Amazon S3 to use an S3 Bucket Key for
object encryption with SSE-KMS.

Specifying this header with a COPY action doesnE<rsquo>t affect
bucket-level settings for S3 Bucket Key.



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



=head2 ContentType => Str

A standard MIME type describing the format of the object data.



=head2 B<REQUIRED> CopySource => Str

Specifies the source object for the copy operation. You specify the
value in one of two formats, depending on whether you want to access
the source object through an access point
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html):

=over

=item *

For objects not accessed through an access point, specify the name of
the source bucket and the key of the source object, separated by a
slash (/). For example, to copy the object C<reports/january.pdf> from
the bucket C<awsexamplebucket>, use
C<awsexamplebucket/reports/january.pdf>. The value must be URL encoded.

=item *

For objects accessed through access points, specify the Amazon Resource
Name (ARN) of the object as accessed through the access point, in the
format
C<arn:aws:s3:E<lt>RegionE<gt>:E<lt>account-idE<gt>:accesspoint/E<lt>access-point-nameE<gt>/object/E<lt>keyE<gt>>.
For example, to copy the object C<reports/january.pdf> through access
point C<my-access-point> owned by account C<123456789012> in Region
C<us-west-2>, use the URL encoding of
C<arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf>.
The value must be URL encoded.

Amazon S3 supports copy operations using access points only when the
source and destination buckets are in the same AWS Region.

Alternatively, for objects accessed through Amazon S3 on Outposts,
specify the ARN of the object as accessed in the format
C<arn:aws:s3-outposts:E<lt>RegionE<gt>:E<lt>account-idE<gt>:outpost/E<lt>outpost-idE<gt>/object/E<lt>keyE<gt>>.
For example, to copy the object C<reports/january.pdf> through outpost
C<my-outpost> owned by account C<123456789012> in Region C<us-west-2>,
use the URL encoding of
C<arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf>.
The value must be URL encoded.

=back

To copy a specific version of an object, append
C<?versionId=E<lt>version-idE<gt>> to the value (for example,
C<awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893>).
If you don't specify a version ID, Amazon S3 copies the latest version
of the source object.



=head2 CopySourceIfMatch => Str

Copies the object if its entity tag (ETag) matches the specified tag.



=head2 CopySourceIfModifiedSince => Str

Copies the object if it has been modified since the specified time.



=head2 CopySourceIfNoneMatch => Str

Copies the object if its entity tag (ETag) is different than the
specified ETag.



=head2 CopySourceIfUnmodifiedSince => Str

Copies the object if it hasn't been modified since the specified time.



=head2 CopySourceSSECustomerAlgorithm => Str

Specifies the algorithm to use when decrypting the source object (for
example, AES256).



=head2 CopySourceSSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use to
decrypt the source object. The encryption key provided in this header
must be one that was used when the source object was created.



=head2 CopySourceSSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure that the encryption key was transmitted without error.



=head2 ExpectedBucketOwner => Str

The account ID of the expected destination bucket owner. If the
destination bucket is owned by a different account, the request will
fail with an HTTP C<403 (Access Denied)> error.



=head2 ExpectedSourceBucketOwner => Str

The account ID of the expected source bucket owner. If the source
bucket is owned by a different account, the request will fail with an
HTTP C<403 (Access Denied)> error.



=head2 Expires => Str

The date and time at which the object is no longer cacheable.



=head2 GrantFullControl => Str

Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the
object.

This action is not supported by Amazon S3 on Outposts.



=head2 GrantRead => Str

Allows grantee to read the object data and its metadata.

This action is not supported by Amazon S3 on Outposts.



=head2 GrantReadACP => Str

Allows grantee to read the object ACL.

This action is not supported by Amazon S3 on Outposts.



=head2 GrantWriteACP => Str

Allows grantee to write the ACL for the applicable object.

This action is not supported by Amazon S3 on Outposts.



=head2 B<REQUIRED> Key => Str

The key of the destination object.



=head2 Metadata => L<Paws::S3::Metadata>

A map of metadata to store with the object in S3.



=head2 MetadataDirective => Str

Specifies whether the metadata is copied from the source object or
replaced with metadata provided in the request.

Valid values are: C<"COPY">, C<"REPLACE">

=head2 ObjectLockLegalHoldStatus => Str

Specifies whether you want to apply a Legal Hold to the copied object.

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

The Object Lock mode that you want to apply to the copied object.

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

The date and time when you want the copied object's Object Lock to
expire.



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

Specifies the AWS KMS key ID to use for object encryption. All GET and
PUT requests for an object protected by AWS KMS will fail if not made
via SSL or using SigV4. For information about configuring using any of
the officially supported AWS SDKs and AWS CLI, see Specifying the
Signature Version in Request Authentication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version)
in the I<Amazon S3 User Guide>.



=head2 StorageClass => Str

By default, Amazon S3 uses the STANDARD Storage Class to store newly
created objects. The STANDARD storage class provides high durability
and high availability. Depending on performance needs, you can specify
a different Storage Class. Amazon S3 on Outposts only uses the OUTPOSTS
Storage Class. For more information, see Storage Classes
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html)
in the I<Amazon S3 User Guide>.

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">, C<"OUTPOSTS">

=head2 Tagging => Str

The tag-set for the object destination object this value must be used
in conjunction with the C<TaggingDirective>. The tag-set must be
encoded as URL Query parameters.



=head2 TaggingDirective => Str

Specifies whether the object tag-set are copied from the source object
or replaced with tag-set provided in the request.

Valid values are: C<"COPY">, C<"REPLACE">

=head2 WebsiteRedirectLocation => Str

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

