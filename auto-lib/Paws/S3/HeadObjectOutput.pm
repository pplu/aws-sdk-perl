
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
  'types' => {
               'ReplicationStatus' => {
                                        'type' => 'Str'
                                      },
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'SSEKMSKeyId' => {
                                  'type' => 'Str'
                                },
               'Metadata' => {
                               'class' => 'Paws::S3::Metadata',
                               'type' => 'S3_Metadata'
                             },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'WebsiteRedirectLocation' => {
                                              'type' => 'Str'
                                            },
               'Restore' => {
                              'type' => 'Str'
                            },
               'ETag' => {
                           'type' => 'Str'
                         },
               'ContentLanguage' => {
                                      'type' => 'Str'
                                    },
               'ObjectLockLegalHoldStatus' => {
                                                'type' => 'Str'
                                              },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'LastModified' => {
                                   'type' => 'Str'
                                 },
               'Expires' => {
                              'type' => 'Str'
                            },
               'Expiration' => {
                                 'type' => 'Str'
                               },
               'MissingMeta' => {
                                  'type' => 'Int'
                                },
               'PartsCount' => {
                                 'type' => 'Int'
                               },
               'ObjectLockRetainUntilDate' => {
                                                'type' => 'Str'
                                              },
               'AcceptRanges' => {
                                   'type' => 'Str'
                                 },
               'DeleteMarker' => {
                                   'type' => 'Bool'
                                 },
               'ServerSideEncryption' => {
                                           'type' => 'Str'
                                         },
               'SSECustomerKeyMD5' => {
                                        'type' => 'Str'
                                      },
               'SSECustomerAlgorithm' => {
                                           'type' => 'Str'
                                         },
               'ObjectLockMode' => {
                                     'type' => 'Str'
                                   },
               'CacheControl' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ContentEncoding' => {
                                      'type' => 'Str'
                                    },
               'StorageClass' => {
                                   'type' => 'Str'
                                 },
               'ContentDisposition' => {
                                         'type' => 'Str'
                                       }
             },
  'ParamInHeader' => {
                       'ReplicationStatus' => 'x-amz-replication-status',
                       'ContentLength' => 'Content-Length',
                       'ContentType' => 'Content-Type',
                       'SSEKMSKeyId' => 'x-amz-server-side-encryption-aws-kms-key-id',
                       'RequestCharged' => 'x-amz-request-charged',
                       'WebsiteRedirectLocation' => 'x-amz-website-redirect-location',
                       'Restore' => 'x-amz-restore',
                       'ETag' => 'ETag',
                       'ContentLanguage' => 'Content-Language',
                       'ObjectLockLegalHoldStatus' => 'x-amz-object-lock-legal-hold',
                       'VersionId' => 'x-amz-version-id',
                       'LastModified' => 'Last-Modified',
                       'Expires' => 'Expires',
                       'Expiration' => 'x-amz-expiration',
                       'MissingMeta' => 'x-amz-missing-meta',
                       'PartsCount' => 'x-amz-mp-parts-count',
                       'ObjectLockRetainUntilDate' => 'x-amz-object-lock-retain-until-date',
                       'AcceptRanges' => 'accept-ranges',
                       'DeleteMarker' => 'x-amz-delete-marker',
                       'ServerSideEncryption' => 'x-amz-server-side-encryption',
                       'SSECustomerKeyMD5' => 'x-amz-server-side-encryption-customer-key-MD5',
                       'SSECustomerAlgorithm' => 'x-amz-server-side-encryption-customer-algorithm',
                       'CacheControl' => 'Cache-Control',
                       'ObjectLockMode' => 'x-amz-object-lock-mode',
                       'ContentEncoding' => 'Content-Encoding',
                       'StorageClass' => 'x-amz-storage-class',
                       'ContentDisposition' => 'Content-Disposition'
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

The Legal Hold status for the specified object.

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

The object lock mode currently in place for this object.

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

The date and time when this object's object lock expires.



=head2 PartsCount => Int

The count of parts this object has.



=head2 ReplicationStatus => Str



Valid values are: C<"COMPLETE">, C<"PENDING">, C<"FAILED">, C<"REPLICA">

=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 Restore => Str

Provides information about object restoration operation and expiration
time of the restored object copy.



=head2 ServerSideEncryption => Str

The Server-side encryption algorithm used when storing this object in
S3 (e.g., AES256, aws:kms).

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
master encryption key that was used for the object.



=head2 StorageClass => Str



Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">

=head2 VersionId => Str

Version of the object.



=head2 WebsiteRedirectLocation => Str

If the bucket is configured as a website, redirects requests for this
object to another object in the same bucket or to an external URL.
Amazon S3 stores the value of this header in the object metadata.




=cut

