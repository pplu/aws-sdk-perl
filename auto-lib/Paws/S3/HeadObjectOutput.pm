
package Paws::S3::HeadObjectOutput;
  use Moose;
  has AcceptRanges => (is => 'ro', isa => 'Str', header_name => 'accept-ranges', traits => ['ParamInHeader']);
  has ArchiveStatus => (is => 'ro', isa => 'Str', header_name => 'x-amz-archive-status', traits => ['ParamInHeader']);
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has CacheControl => (is => 'ro', isa => 'Str', header_name => 'Cache-Control', traits => ['ParamInHeader']);
  has ContentDisposition => (is => 'ro', isa => 'Str', header_name => 'Content-Disposition', traits => ['ParamInHeader']);
  has ContentEncoding => (is => 'ro', isa => 'Str', header_name => 'Content-Encoding', traits => ['ParamInHeader']);
  has ContentLanguage => (is => 'ro', isa => 'Str', header_name => 'Content-Language', traits => ['ParamInHeader']);
  has ContentLength => (is => 'ro', isa => 'Int', header_name => 'Content-Length', traits => ['ParamInHeader']);
  has ContentType => (is => 'ro', isa => 'Str', header_name => 'Content-Type', traits => ['ParamInHeader']);
  has DeleteMarker => (is => 'ro', isa => 'Bool', header_name => 'x-amz-delete-marker', traits => ['ParamInHeader']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Expiration => (is => 'ro', isa => 'Str', header_name => 'x-amz-expiration', traits => ['ParamInHeader']);
  has Expires => (is => 'ro', isa => 'Str', header_name => 'Expires', traits => ['ParamInHeader']);
  has LastModified => (is => 'ro', isa => 'Str', header_name => 'Last-Modified', traits => ['ParamInHeader']);
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata', header_prefix => 'x-amz-meta-', traits => ['ParamInHeaders']);
  has MissingMeta => (is => 'ro', isa => 'Int', header_name => 'x-amz-missing-meta', traits => ['ParamInHeader']);
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-legal-hold', traits => ['ParamInHeader']);
  has ObjectLockMode => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-mode', traits => ['ParamInHeader']);
  has ObjectLockRetainUntilDate => (is => 'ro', isa => 'Str', header_name => 'x-amz-object-lock-retain-until-date', traits => ['ParamInHeader']);
  has PartsCount => (is => 'ro', isa => 'Int', header_name => 'x-amz-mp-parts-count', traits => ['ParamInHeader']);
  has ReplicationStatus => (is => 'ro', isa => 'Str', header_name => 'x-amz-replication-status', traits => ['ParamInHeader']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has Restore => (is => 'ro', isa => 'Str', header_name => 'x-amz-restore', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);
  has StorageClass => (is => 'ro', isa => 'Str', header_name => 'x-amz-storage-class', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-version-id', traits => ['ParamInHeader']);
  has WebsiteRedirectLocation => (is => 'ro', isa => 'Str', header_name => 'x-amz-website-redirect-location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::HeadObjectOutput

=head1 ATTRIBUTES


=head2 AcceptRanges => Str

Indicates that a range of bytes was specified.



=head2 ArchiveStatus => Str

The archive state of the head object.

Valid values are: C<"ARCHIVE_ACCESS">, C<"DEEP_ARCHIVE_ACCESS">

=head2 BucketKeyEnabled => Bool

Indicates whether the object uses an S3 Bucket Key for server-side
encryption with AWS KMS (SSE-KMS).



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

Creation date of the object.



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
is either a source or a destination in a replication rule.

In replication, you have a source bucket on which you configure
replication and destination bucket or buckets where Amazon S3 stores
object replicas. When you request an object (C<GetObject>) or object
metadata (C<HeadObject>) from these buckets, Amazon S3 will return the
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

If requesting an object from a destination bucket E<mdash> Amazon S3
will return the C<x-amz-replication-status> header with value REPLICA
if the object in your request is a replica that Amazon S3 created and
there is no replica modification replication in progress.

=item *

When replicating objects to multiple destination buckets the
C<x-amz-replication-status> header acts differently. The header of the
source object will only return a value of COMPLETED when replication is
successful to all destinations. The header will remain at value PENDING
until replication has completed for all destinations. If one or more
destinations fails replication the header will return FAILED.

=back

For more information, see Replication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).

Valid values are: C<"COMPLETE">, C<"PENDING">, C<"FAILED">, C<"REPLICA">

=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 Restore => Str

If the object is an archived object (an object whose storage class is
GLACIER), the response includes this header if either the archive
restoration is in progress (see RestoreObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html)
or an archive copy is already restored.

If an archive copy is already restored, the header value indicates when
Amazon S3 is scheduled to delete the object copy. For example:

C<x-amz-restore: ongoing-request="false", expiry-date="Fri, 21 Dec 2012
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
this header for all objects except for S3 Standard storage class
objects.

For more information, see Storage Classes
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html).

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">, C<"OUTPOSTS">

=head2 VersionId => Str

Version of the object.



=head2 WebsiteRedirectLocation => Str

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata.




=cut

