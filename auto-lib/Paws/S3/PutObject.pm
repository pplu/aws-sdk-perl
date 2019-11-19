
package Paws::S3::PutObject;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_Metadata/;
  has ACL => (is => 'ro', isa => Str, predicate => 1);
  has Body => (is => 'ro', isa => Str, predicate => 1);
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CacheControl => (is => 'ro', isa => Str, predicate => 1);
  has ContentDisposition => (is => 'ro', isa => Str, predicate => 1);
  has ContentEncoding => (is => 'ro', isa => Str, predicate => 1);
  has ContentLanguage => (is => 'ro', isa => Str, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has ContentType => (is => 'ro', isa => Str, predicate => 1);
  has Expires => (is => 'ro', isa => Str, predicate => 1);
  has GrantFullControl => (is => 'ro', isa => Str, predicate => 1);
  has GrantRead => (is => 'ro', isa => Str, predicate => 1);
  has GrantReadACP => (is => 'ro', isa => Str, predicate => 1);
  has GrantWriteACP => (is => 'ro', isa => Str, predicate => 1);
  has Key => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Metadata => (is => 'ro', isa => S3_Metadata, predicate => 1);
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => Str, predicate => 1);
  has ObjectLockMode => (is => 'ro', isa => Str, predicate => 1);
  has ObjectLockRetainUntilDate => (is => 'ro', isa => Str, predicate => 1);
  has RequestPayer => (is => 'ro', isa => Str, predicate => 1);
  has ServerSideEncryption => (is => 'ro', isa => Str, predicate => 1);
  has SSECustomerAlgorithm => (is => 'ro', isa => Str, predicate => 1);
  has SSECustomerKey => (is => 'ro', isa => Str, predicate => 1);
  has SSECustomerKeyMD5 => (is => 'ro', isa => Str, predicate => 1);
  has SSEKMSEncryptionContext => (is => 'ro', isa => Str, predicate => 1);
  has SSEKMSKeyId => (is => 'ro', isa => Str, predicate => 1);
  has StorageClass => (is => 'ro', isa => Str, predicate => 1);
  has Tagging => (is => 'ro', isa => Str, predicate => 1);
  has WebsiteRedirectLocation => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutObject');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::PutObjectOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  class_has _stream_param => (is => 'ro', default => 'Body');
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'GrantRead' => {
                                'type' => 'Str'
                              },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'CacheControl' => {
                                   'type' => 'Str'
                                 },
               'GrantFullControl' => {
                                       'type' => 'Str'
                                     },
               'ObjectLockLegalHoldStatus' => {
                                                'type' => 'Str'
                                              },
               'ContentEncoding' => {
                                      'type' => 'Str'
                                    },
               'Tagging' => {
                              'type' => 'Str'
                            },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'ACL' => {
                          'type' => 'Str'
                        },
               'Metadata' => {
                               'class' => 'Paws::S3::Metadata',
                               'type' => 'S3_Metadata'
                             },
               'RequestPayer' => {
                                   'type' => 'Str'
                                 },
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'SSEKMSKeyId' => {
                                  'type' => 'Str'
                                },
               'Key' => {
                          'type' => 'Str'
                        },
               'SSECustomerKey' => {
                                     'type' => 'Str'
                                   },
               'Body' => {
                           'type' => 'Str'
                         },
               'ContentDisposition' => {
                                         'type' => 'Str'
                                       },
               'StorageClass' => {
                                   'type' => 'Str'
                                 },
               'ObjectLockMode' => {
                                     'type' => 'Str'
                                   },
               'SSECustomerAlgorithm' => {
                                           'type' => 'Str'
                                         },
               'ObjectLockRetainUntilDate' => {
                                                'type' => 'Str'
                                              },
               'SSEKMSEncryptionContext' => {
                                              'type' => 'Str'
                                            },
               'GrantWriteACP' => {
                                    'type' => 'Str'
                                  },
               'WebsiteRedirectLocation' => {
                                              'type' => 'Str'
                                            },
               'ServerSideEncryption' => {
                                           'type' => 'Str'
                                         },
               'GrantReadACP' => {
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
                                      }
             },
  'IsRequired' => {
                    'Key' => 1,
                    'Bucket' => 1
                  },
  'ParamInHeaders' => {
                        'Metadata' => 'x-amz-meta-'
                      },
  'AutoInHeader' => {
                      'ContentMD5' => {
                                        'auto' => 'MD5',
                                        'header_name' => 'Content-MD5'
                                      }
                    },
  'ParamInURI' => {
                    'Key' => 'Key',
                    'Bucket' => 'Bucket'
                  },
  'ParamInHeader' => {
                       'Expires' => 'Expires',
                       'ContentLanguage' => 'Content-Language',
                       'SSECustomerKeyMD5' => 'x-amz-server-side-encryption-customer-key-MD5',
                       'WebsiteRedirectLocation' => 'x-amz-website-redirect-location',
                       'GrantReadACP' => 'x-amz-grant-read-acp',
                       'ServerSideEncryption' => 'x-amz-server-side-encryption',
                       'GrantWriteACP' => 'x-amz-grant-write-acp',
                       'SSEKMSEncryptionContext' => 'x-amz-server-side-encryption-context',
                       'ObjectLockRetainUntilDate' => 'x-amz-object-lock-retain-until-date',
                       'SSECustomerAlgorithm' => 'x-amz-server-side-encryption-customer-algorithm',
                       'ObjectLockMode' => 'x-amz-object-lock-mode',
                       'StorageClass' => 'x-amz-storage-class',
                       'SSECustomerKey' => 'x-amz-server-side-encryption-customer-key',
                       'ContentDisposition' => 'Content-Disposition',
                       'SSEKMSKeyId' => 'x-amz-server-side-encryption-aws-kms-key-id',
                       'ACL' => 'x-amz-acl',
                       'RequestPayer' => 'x-amz-request-payer',
                       'ObjectLockLegalHoldStatus' => 'x-amz-object-lock-legal-hold',
                       'GrantFullControl' => 'x-amz-grant-full-control',
                       'ContentEncoding' => 'Content-Encoding',
                       'Tagging' => 'x-amz-tagging',
                       'CacheControl' => 'Cache-Control',
                       'ContentType' => 'Content-Type',
                       'GrantRead' => 'x-amz-grant-read',
                       'ContentLength' => 'Content-Length'
                     }
}
;
    return $Params_map;
  }

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

Name of the bucket to which the PUT operation was initiated.



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



=head2 Metadata => S3_Metadata

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

The Server-side encryption algorithm used when storing this object in
S3 (e.g., AES256, aws:kms).

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSECustomerAlgorithm => Str

Specifies the algorithm to use to when encrypting the object (e.g.,
AES256).



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



=head2 SSEKMSEncryptionContext => Str

Specifies the AWS KMS Encryption Context to use for object encryption.
The value of this header is a base64-encoded UTF-8 string holding JSON
with the encryption context key-value pairs.



=head2 SSEKMSKeyId => Str

If the x-amz-server-side-encryption is present and has the value of
aws:kms, this header specifies the ID of the AWS Key Management Service
(AWS KMS) customer master key (CMK) that was used for the object.

If the value of x-amz-server-side-encryption is aws:kms, this header
specifies the ID of the AWS KMS CMK that will be used for the object.
If you specify x-amz-server-side-encryption:aws:kms, but do not provide
x-amz-server-side-encryption-aws-kms-key-id, Amazon S3 uses the AWS
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
information about object metadata, see .

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

