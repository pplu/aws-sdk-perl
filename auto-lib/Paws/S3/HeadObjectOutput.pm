
package Paws::S3::HeadObjectOutput;
  use Moose;
  has AcceptRanges => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'accept-ranges');
  has CacheControl => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Cache-Control');
  has ContentDisposition => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Disposition');
  has ContentEncoding => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Encoding');
  has ContentLanguage => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Language');
  has ContentLength => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'Content-Length');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has DeleteMarker => (is => 'ro', isa => 'Bool', traits => ['ParamInHeader'], header_name => 'x-amz-delete-marker');
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has Expiration => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-expiration');
  has Expires => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Expires');
  has LastModified => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Last-Modified');
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata', traits => ['ParamInHeaders'], header_prefix => 'x-amz-meta-');
  has MissingMeta => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'x-amz-missing-meta');
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-object-lock-legal-hold');
  has ObjectLockMode => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-object-lock-mode');
  has ObjectLockRetainUntilDate => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-object-lock-retain-until-date');
  has PartsCount => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'x-amz-mp-parts-count');
  has ReplicationStatus => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-replication-status');
  has RequestCharged => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-request-charged');
  has Restore => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-restore');
  has ServerSideEncryption => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-customer-algorithm');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-customer-key-MD5');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-aws-kms-key-id');
  has StorageClass => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-storage-class');
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-version-id');
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-website-redirect-location');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::HeadObjectOutput

=head1 ATTRIBUTES


=head2 AcceptRanges => Str

Indicates that a range of bytes was specified.



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

Size of the body in bytes.



=head2 ContentType => Str

A standard MIME type describing the format of the object data.



=head2 DeleteMarker => Bool

Specifies whether the object retrieved was (true) or was not (false) a
Delete Marker. If false, this response header does not appear in the
response.



=head2 ETag => Str

An ETag is an opaque identifier assigned by a web server to a specific
version of a resource found at a URL.



=head2 Expiration => Str

If the object expiration is configured (see PUT Bucket lifecycle), the
response includes this header. It includes the expiry-date and rule-id
key-value pairs providing object expiration information. The value of
the rule-id is URL encoded.



=head2 Expires => Str

The date and time at which the object is no longer cacheable.



=head2 LastModified => Str

Last modified date of the object



=head2 Metadata => L<Paws::S3::Metadata>

A map of metadata to store with the object in S3.



=head2 MissingMeta => Int

This is set to the number of metadata entries not returned in
C<x-amz-meta> headers. This can happen if you create metadata using an
API like SOAP that supports more flexible metadata than the REST API.
For example, using SOAP, you can create metadata whose values are not
legal HTTP headers.



=head2 ObjectLockLegalHoldStatus => Str

Specifies whether a legal hold is in effect for this object. This
header is only returned if the requester has the
C<s3:GetObjectLegalHold> permission. This header is not returned if the
specified version of this object has never had a legal hold applied.
For more information about S3 Object Lock, see Object Lock
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

The Object Lock mode, if any, that's in effect for this object. This
header is only returned if the requester has the
C<s3:GetObjectRetention> permission. For more information about S3
Object Lock, see Object Lock
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html).

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

The date and time when the Object Lock retention period expires. This
header is only returned if the requester has the
C<s3:GetObjectRetention> permission.



=head2 PartsCount => Int

The count of parts this object has.



=head2 ReplicationStatus => Str

Amazon S3 can return this header if your request involves a bucket that
is either a source or destination in a replication rule.

In replication, you have a source bucket on which you configure
replication and destination bucket where Amazon S3 stores object
replicas. When you request an object (C<GetObject>) or object metadata
(C<HeadObject>) from these buckets, Amazon S3 will return the
C<x-amz-replication-status> header in the response as follows:

=over

=item *

If requesting an object from the source bucket E<mdash> Amazon S3 will
return the C<x-amz-replication-status> header if the object in your
request is eligible for replication.

For example, suppose that in your replication configuration, you
specify object prefix C<TaxDocs> requesting Amazon S3 to replicate
objects with key prefix C<TaxDocs>. Any objects you upload with this
key name prefix, for example C<TaxDocs/document1.pdf>, are eligible for
replication. For any object request with this key name prefix, Amazon
S3 will return the C<x-amz-replication-status> header with value
PENDING, COMPLETED or FAILED indicating object replication status.

=item *

If requesting an object from the destination bucket E<mdash> Amazon S3
will return the C<x-amz-replication-status> header with value REPLICA
if the object in your request is a replica that Amazon S3 created.

=back

For more information, see Replication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).

Valid values are: C<"COMPLETE">, C<"PENDING">, C<"FAILED">, C<"REPLICA">

=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 Restore => Str

If the object is an archived object (an object whose storage class is
GLACIER), the response includes this header if either the archive
restoration is in progress (see RestoreObject or an archive copy is
already restored.

If an archive copy is already restored, the header value indicates when
Amazon S3 is scheduled to delete the object copy. For example:

C<x-amz-restore: ongoing-request="false", expiry-date="Fri, 23 Dec 2012
00:00:00 GMT">

If the object restoration is in progress, the header returns the value
C<ongoing-request="true">.

For more information about archiving objects, see Transitioning
Objects: General Considerations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-transition-general-considerations).



=head2 ServerSideEncryption => Str

If the object is stored using server-side encryption either with an AWS
KMS customer master key (CMK) or an Amazon S3-managed encryption key,
the response includes this header with the value of the server-side
encryption algorithm used when storing this object in Amazon S3 (for
example, AES256, aws:kms).

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSECustomerAlgorithm => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header confirming the
encryption algorithm used.



=head2 SSECustomerKeyMD5 => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header to provide round-trip
message integrity verification of the customer-provided encryption key.



=head2 SSEKMSKeyId => Str

If present, specifies the ID of the AWS Key Management Service (AWS
KMS) symmetric customer managed customer master key (CMK) that was used
for the object.



=head2 StorageClass => Str

Provides storage class information of the object. Amazon S3 returns
this header for all objects except for Standard storage class objects.

For more information, see Storage Classes
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html).

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">

=head2 VersionId => Str

Version of the object.



=head2 WebsiteRedirectLocation => Str

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata.




=cut

