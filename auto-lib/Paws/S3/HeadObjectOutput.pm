
package Paws::S3::HeadObjectOutput;
  use Moo;

  use Types::Standard qw/Str Int Bool/;
  use Paws::S3::Types qw/S3_Metadata/;
  has AcceptRanges => (is => 'ro', isa => Str);
  has CacheControl => (is => 'ro', isa => Str);
  has ContentDisposition => (is => 'ro', isa => Str);
  has ContentEncoding => (is => 'ro', isa => Str);
  has ContentLanguage => (is => 'ro', isa => Str);
  has ContentLength => (is => 'ro', isa => Int);
  has ContentType => (is => 'ro', isa => Str);
  has DeleteMarker => (is => 'ro', isa => Bool);
  has ETag => (is => 'ro', isa => Str);
  has Expiration => (is => 'ro', isa => Str);
  has Expires => (is => 'ro', isa => Str);
  has LastModified => (is => 'ro', isa => Str);
  has Metadata => (is => 'ro', isa => S3_Metadata);
  has MissingMeta => (is => 'ro', isa => Int);
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => Str);
  has ObjectLockMode => (is => 'ro', isa => Str);
  has ObjectLockRetainUntilDate => (is => 'ro', isa => Str);
  has PartsCount => (is => 'ro', isa => Int);
  has ReplicationStatus => (is => 'ro', isa => Str);
  has RequestCharged => (is => 'ro', isa => Str);
  has Restore => (is => 'ro', isa => Str);
  has ServerSideEncryption => (is => 'ro', isa => Str);
  has SSECustomerAlgorithm => (is => 'ro', isa => Str);
  has SSECustomerKeyMD5 => (is => 'ro', isa => Str);
  has SSEKMSKeyId => (is => 'ro', isa => Str);
  has StorageClass => (is => 'ro', isa => Str);
  has VersionId => (is => 'ro', isa => Str);
  has WebsiteRedirectLocation => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'StorageClass' => 'x-amz-storage-class',
                       'ObjectLockMode' => 'x-amz-object-lock-mode',
                       'SSECustomerAlgorithm' => 'x-amz-server-side-encryption-customer-algorithm',
                       'VersionId' => 'x-amz-version-id',
                       'ContentDisposition' => 'Content-Disposition',
                       'WebsiteRedirectLocation' => 'x-amz-website-redirect-location',
                       'ServerSideEncryption' => 'x-amz-server-side-encryption',
                       'Expires' => 'Expires',
                       'SSECustomerKeyMD5' => 'x-amz-server-side-encryption-customer-key-MD5',
                       'ContentLanguage' => 'Content-Language',
                       'PartsCount' => 'x-amz-mp-parts-count',
                       'ObjectLockRetainUntilDate' => 'x-amz-object-lock-retain-until-date',
                       'ObjectLockLegalHoldStatus' => 'x-amz-object-lock-legal-hold',
                       'ContentEncoding' => 'Content-Encoding',
                       'Expiration' => 'x-amz-expiration',
                       'ETag' => 'ETag',
                       'ReplicationStatus' => 'x-amz-replication-status',
                       'ContentLength' => 'Content-Length',
                       'Restore' => 'x-amz-restore',
                       'AcceptRanges' => 'accept-ranges',
                       'DeleteMarker' => 'x-amz-delete-marker',
                       'ContentType' => 'Content-Type',
                       'CacheControl' => 'Cache-Control',
                       'RequestCharged' => 'x-amz-request-charged',
                       'MissingMeta' => 'x-amz-missing-meta',
                       'LastModified' => 'Last-Modified',
                       'SSEKMSKeyId' => 'x-amz-server-side-encryption-aws-kms-key-id'
                     },
  'types' => {
               'DeleteMarker' => {
                                   'type' => 'Bool'
                                 },
               'CacheControl' => {
                                   'type' => 'Str'
                                 },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'ReplicationStatus' => {
                                        'type' => 'Str'
                                      },
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AcceptRanges' => {
                                   'type' => 'Str'
                                 },
               'Restore' => {
                              'type' => 'Str'
                            },
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'ObjectLockLegalHoldStatus' => {
                                                'type' => 'Str'
                                              },
               'Expiration' => {
                                 'type' => 'Str'
                               },
               'ContentEncoding' => {
                                      'type' => 'Str'
                                    },
               'SSEKMSKeyId' => {
                                  'type' => 'Str'
                                },
               'Metadata' => {
                               'type' => 'S3_Metadata',
                               'class' => 'Paws::S3::Metadata'
                             },
               'LastModified' => {
                                   'type' => 'Str'
                                 },
               'MissingMeta' => {
                                  'type' => 'Int'
                                },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'ContentDisposition' => {
                                         'type' => 'Str'
                                       },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'SSECustomerAlgorithm' => {
                                           'type' => 'Str'
                                         },
               'StorageClass' => {
                                   'type' => 'Str'
                                 },
               'ObjectLockMode' => {
                                     'type' => 'Str'
                                   },
               'PartsCount' => {
                                 'type' => 'Int'
                               },
               'ObjectLockRetainUntilDate' => {
                                                'type' => 'Str'
                                              },
               'Expires' => {
                              'type' => 'Str'
                            },
               'ContentLanguage' => {
                                      'type' => 'Str'
                                    },
               'SSECustomerKeyMD5' => {
                                        'type' => 'Str'
                                      },
               'WebsiteRedirectLocation' => {
                                              'type' => 'Str'
                                            },
               'ServerSideEncryption' => {
                                           'type' => 'Str'
                                         }
             },
  'ParamInHeaders' => {
                        'Metadata' => 'x-amz-meta-'
                      }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::HeadObjectOutput

=head1 ATTRIBUTES


=head2 AcceptRanges => Str

Indicates that a range of bytes was specifed.



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
version of a resource found at a URL



=head2 Expiration => Str

If the object expiration is configured (see PUT Bucket lifecycle), the
response includes this header. It includes the expiry-date and rule-id
key value pairs providing object expiration information. The value of
the rule-id is URL encoded.



=head2 Expires => Str

The date and time at which the object is no longer cacheable.



=head2 LastModified => Str

Last modified date of the object



=head2 Metadata => S3_Metadata

A map of metadata to store with the object in S3.



=head2 MissingMeta => Int

This is set to the number of metadata entries not returned in
x-amz-meta headers. This can happen if you create metadata using an API
like SOAP that supports more flexible metadata than the REST API. For
example, using SOAP, you can create metadata whose values are not legal
HTTP headers.



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

In replication you have a source bucket on which you configure
replication and destination bucket where Amazon S3 stores object
replicas. When you request an object (GetObject) or object metadata
(HeadObject) from these buckets, Amazon S3 will return the
x-amz-replication-status header in the response as follows:

=over

=item *

If requesting object from the source bucket E<mdash> Amazon S3 will
return the x-amz-replication-status header if object in your request is
eligible for replication.

For example, suppose in your replication configuration you specify
object prefix "TaxDocs" requesting Amazon S3 to replicate objects with
key prefix "TaxDocs". Then any objects you upload with this key name
prefix, for example "TaxDocs/document1.pdf", is eligible for
replication. For any object request with this key name prefix Amazon S3
will return the x-amz-replication-status header with value PENDING,
COMPLETED or FAILED indicating object replication status.

=item *

If requesting object from the destination bucket E<mdash> Amazon S3
will return the x-amz-replication-status header with value REPLICA if
object in your request is a replica that Amazon S3 created.

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
the response includes this header with the value of the Server-side
encryption algorithm used when storing this object in S3 (e.g., AES256,
aws:kms).

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSECustomerAlgorithm => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header confirming the
encryption algorithm used.



=head2 SSECustomerKeyMD5 => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header to provide round trip
message integrity verification of the customer-provided encryption key.



=head2 SSEKMSKeyId => Str

If present, specifies the ID of the AWS Key Management Service (KMS)
customer master key (CMK) that was used for the object.



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

