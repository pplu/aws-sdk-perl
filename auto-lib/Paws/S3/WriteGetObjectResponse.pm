
package Paws::S3::WriteGetObjectResponse;
  use Moose;
  has AcceptRanges => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-accept-ranges', traits => ['ParamInHeader']);
  has Body => (is => 'ro', isa => 'Str', traits => ['ParamInBody']);
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has CacheControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-Cache-Control', traits => ['ParamInHeader']);
  has ContentDisposition => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-Content-Disposition', traits => ['ParamInHeader']);
  has ContentEncoding => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-Content-Encoding', traits => ['ParamInHeader']);
  has ContentLanguage => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-Content-Language', traits => ['ParamInHeader']);
  has ContentLength => (is => 'ro', isa => 'Int', header_name => 'Content-Length', traits => ['ParamInHeader']);
  has ContentRange => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-Content-Range', traits => ['ParamInHeader']);
  has ContentType => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-Content-Type', traits => ['ParamInHeader']);
  has DeleteMarker => (is => 'ro', isa => 'Bool', header_name => 'x-amz-fwd-header-x-amz-delete-marker', traits => ['ParamInHeader']);
  has ErrorCode => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-error-code', traits => ['ParamInHeader']);
  has ErrorMessage => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-error-message', traits => ['ParamInHeader']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-ETag', traits => ['ParamInHeader']);
  has Expiration => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-expiration', traits => ['ParamInHeader']);
  has Expires => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-Expires', traits => ['ParamInHeader']);
  has LastModified => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-Last-Modified', traits => ['ParamInHeader']);
  has Metadata => (is => 'ro', isa => 'Paws::S3::Metadata', header_prefix => 'x-amz-meta-', traits => ['ParamInHeaders']);
  has MissingMeta => (is => 'ro', isa => 'Int', header_name => 'x-amz-fwd-header-x-amz-missing-meta', traits => ['ParamInHeader']);
  has ObjectLockLegalHoldStatus => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-object-lock-legal-hold', traits => ['ParamInHeader']);
  has ObjectLockMode => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-object-lock-mode', traits => ['ParamInHeader']);
  has ObjectLockRetainUntilDate => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-object-lock-retain-until-date', traits => ['ParamInHeader']);
  has PartsCount => (is => 'ro', isa => 'Int', header_name => 'x-amz-fwd-header-x-amz-mp-parts-count', traits => ['ParamInHeader']);
  has ReplicationStatus => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-replication-status', traits => ['ParamInHeader']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-request-charged', traits => ['ParamInHeader']);
  has RequestRoute => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-route', traits => ['ParamInHeader'], required => 1);
  has RequestToken => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-token', traits => ['ParamInHeader'], required => 1);
  has Restore => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-restore', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);
  has StatusCode => (is => 'ro', isa => 'Int', header_name => 'x-amz-fwd-status', traits => ['ParamInHeader']);
  has StorageClass => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-storage-class', traits => ['ParamInHeader']);
  has TagCount => (is => 'ro', isa => 'Int', header_name => 'x-amz-fwd-header-x-amz-tagging-count', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-fwd-header-x-amz-version-id', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'WriteGetObjectResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/WriteGetObjectResponse');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _stream_param => (is => 'ro', default => 'Body');
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::WriteGetObjectResponse - Arguments for method WriteGetObjectResponse on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method WriteGetObjectResponse on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method WriteGetObjectResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to WriteGetObjectResponse.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->WriteGetObjectResponse(
      RequestRoute       => 'MyRequestRoute',
      RequestToken       => 'MyRequestToken',
      AcceptRanges       => 'MyAcceptRanges',          # OPTIONAL
      Body               => 'BlobBody',                # OPTIONAL
      BucketKeyEnabled   => 1,                         # OPTIONAL
      CacheControl       => 'MyCacheControl',          # OPTIONAL
      ContentDisposition => 'MyContentDisposition',    # OPTIONAL
      ContentEncoding    => 'MyContentEncoding',       # OPTIONAL
      ContentLanguage    => 'MyContentLanguage',       # OPTIONAL
      ContentLength      => 1,                         # OPTIONAL
      ContentRange       => 'MyContentRange',          # OPTIONAL
      ContentType        => 'MyContentType',           # OPTIONAL
      DeleteMarker       => 1,                         # OPTIONAL
      ETag               => 'MyETag',                  # OPTIONAL
      ErrorCode          => 'MyErrorCode',             # OPTIONAL
      ErrorMessage       => 'MyErrorMessage',          # OPTIONAL
      Expiration         => 'MyExpiration',            # OPTIONAL
      Expires            => '1970-01-01T01:00:00',     # OPTIONAL
      LastModified       => '1970-01-01T01:00:00',     # OPTIONAL
      Metadata    => { 'MyMetadataKey' => 'MyMetadataValue', },    # OPTIONAL
      MissingMeta => 1,                                            # OPTIONAL
      ObjectLockLegalHoldStatus => 'ON',                           # OPTIONAL
      ObjectLockMode            => 'GOVERNANCE',                   # OPTIONAL
      ObjectLockRetainUntilDate => '1970-01-01T01:00:00',          # OPTIONAL
      PartsCount                => 1,                              # OPTIONAL
      ReplicationStatus         => 'COMPLETE',                     # OPTIONAL
      RequestCharged            => 'requester',                    # OPTIONAL
      Restore                   => 'MyRestore',                    # OPTIONAL
      SSECustomerAlgorithm      => 'MySSECustomerAlgorithm',       # OPTIONAL
      SSECustomerKeyMD5         => 'MySSECustomerKeyMD5',          # OPTIONAL
      SSEKMSKeyId               => 'MySSEKMSKeyId',                # OPTIONAL
      ServerSideEncryption      => 'AES256',                       # OPTIONAL
      StatusCode                => 1,                              # OPTIONAL
      StorageClass              => 'STANDARD',                     # OPTIONAL
      TagCount                  => 1,                              # OPTIONAL
      VersionId                 => 'MyObjectVersionId',            # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/WriteGetObjectResponse>

=head1 ATTRIBUTES


=head2 AcceptRanges => Str

Indicates that a range of bytes was specified.



=head2 Body => Str

The object data.



=head2 BucketKeyEnabled => Bool

Indicates whether the object stored in Amazon S3 uses an S3 bucket key
for server-side encryption with AWS KMS (SSE-KMS).



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

The size of the content body in bytes.



=head2 ContentRange => Str

The portion of the object returned in the response.



=head2 ContentType => Str

A standard MIME type describing the format of the object data.



=head2 DeleteMarker => Bool

Specifies whether an object stored in Amazon S3 is (C<true>) or is not
(C<false>) a delete marker.



=head2 ErrorCode => Str

A string that uniquely identifies an error condition. Returned in the
E<lt>CodeE<gt> tag of the error XML response for a corresponding
C<GetObject> call. Cannot be used with a successful C<StatusCode>
header or when the transformed object is provided in the body. All
error codes from S3 are sentence-cased. Regex value is
"^[A-Z][a-zA-Z]+$".



=head2 ErrorMessage => Str

Contains a generic description of the error condition. Returned in the
E<lt>MessageE<gt> tag of the error XML response for a corresponding
C<GetObject> call. Cannot be used with a successful C<StatusCode>
header or when the transformed object is provided in body.



=head2 ETag => Str

An opaque identifier assigned by a web server to a specific version of
a resource found at a URL.



=head2 Expiration => Str

If object stored in Amazon S3 expiration is configured (see PUT Bucket
lifecycle) it includes expiry-date and rule-id key-value pairs
providing object expiration information. The value of the rule-id is
URL encoded.



=head2 Expires => Str

The date and time at which the object is no longer cacheable.



=head2 LastModified => Str

The date and time that the object was last modified.



=head2 Metadata => L<Paws::S3::Metadata>

A map of metadata to store with the object in S3.



=head2 MissingMeta => Int

Set to the number of metadata entries not returned in C<x-amz-meta>
headers. This can happen if you create metadata using an API like SOAP
that supports more flexible metadata than the REST API. For example,
using SOAP, you can create metadata whose values are not legal HTTP
headers.



=head2 ObjectLockLegalHoldStatus => Str

Indicates whether an object stored in Amazon S3 has an active legal
hold.

Valid values are: C<"ON">, C<"OFF">

=head2 ObjectLockMode => Str

Indicates whether an object stored in Amazon S3 has Object Lock
enabled. For more information about S3 Object Lock, see Object Lock
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html).

Valid values are: C<"GOVERNANCE">, C<"COMPLIANCE">

=head2 ObjectLockRetainUntilDate => Str

The date and time when Object Lock is configured to expire.



=head2 PartsCount => Int

The count of parts this object has.



=head2 ReplicationStatus => Str

Indicates if request involves bucket that is either a source or
destination in a Replication rule. For more information about S3
Replication, see Replication
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html).

Valid values are: C<"COMPLETE">, C<"PENDING">, C<"FAILED">, C<"REPLICA">

=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 B<REQUIRED> RequestRoute => Str

Route prefix to the HTTP URL generated.



=head2 B<REQUIRED> RequestToken => Str

A single use encrypted token that maps C<WriteGetObjectResponse> to the
end user C<GetObject> request.



=head2 Restore => Str

Provides information about object restoration operation and expiration
time of the restored object copy.



=head2 ServerSideEncryption => Str

The server-side encryption algorithm used when storing requested object
in Amazon S3 (for example, AES256, aws:kms).

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSECustomerAlgorithm => Str

Encryption algorithm used if server-side encryption with a
customer-provided encryption key was specified for object stored in
Amazon S3.



=head2 SSECustomerKeyMD5 => Str

128-bit MD5 digest of customer-provided encryption key used in Amazon
S3 to encrypt data stored in S3. For more information, see Protecting
data using server-side encryption with customer-provided encryption
keys (SSE-C)
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html).



=head2 SSEKMSKeyId => Str

If present, specifies the ID of the AWS Key Management Service (AWS
KMS) symmetric customer managed customer master key (CMK) that was used
for stored in Amazon S3 object.



=head2 StatusCode => Int

The integer status code for an HTTP response of a corresponding
C<GetObject> request.

B<Status Codes>

=over

=item *

I<200 - OK>

=item *

I<206 - Partial Content>

=item *

I<304 - Not Modified>

=item *

I<400 - Bad Request>

=item *

I<401 - Unauthorized>

=item *

I<403 - Forbidden>

=item *

I<404 - Not Found>

=item *

I<405 - Method Not Allowed>

=item *

I<409 - Conflict>

=item *

I<411 - Length Required>

=item *

I<412 - Precondition Failed>

=item *

I<416 - Range Not Satisfiable>

=item *

I<500 - Internal Server Error>

=item *

I<503 - Service Unavailable>

=back




=head2 StorageClass => Str

The class of storage used to store object in Amazon S3.

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">, C<"OUTPOSTS">

=head2 TagCount => Int

The number of tags, if any, on the object.



=head2 VersionId => Str

An ID used to reference a specific version of the object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method WriteGetObjectResponse in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

