
package Paws::S3::GetObject;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has IfModifiedSince => (is => 'ro', isa => 'Str', header_name => 'If-Modified-Since', traits => ['ParamInHeader']);
  has IfNoneMatch => (is => 'ro', isa => 'Str', header_name => 'If-None-Match', traits => ['ParamInHeader']);
  has IfUnmodifiedSince => (is => 'ro', isa => 'Str', header_name => 'If-Unmodified-Since', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', query_name => 'partNumber', traits => ['ParamInQuery']);
  has Range => (is => 'ro', isa => 'Str', header_name => 'Range', traits => ['ParamInHeader']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has ResponseCacheControl => (is => 'ro', isa => 'Str', query_name => 'response-cache-control', traits => ['ParamInQuery']);
  has ResponseContentDisposition => (is => 'ro', isa => 'Str', query_name => 'response-content-disposition', traits => ['ParamInQuery']);
  has ResponseContentEncoding => (is => 'ro', isa => 'Str', query_name => 'response-content-encoding', traits => ['ParamInQuery']);
  has ResponseContentLanguage => (is => 'ro', isa => 'Str', query_name => 'response-content-language', traits => ['ParamInQuery']);
  has ResponseContentType => (is => 'ro', isa => 'Str', query_name => 'response-content-type', traits => ['ParamInQuery']);
  has ResponseExpires => (is => 'ro', isa => 'Str', query_name => 'response-expires', traits => ['ParamInQuery']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObject - Arguments for method GetObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $GetObjectOutput = $s3->GetObject(
      Bucket                     => 'MyBucketName',
      Key                        => 'MyObjectKey',
      IfMatch                    => 'MyIfMatch',                      # OPTIONAL
      IfModifiedSince            => '1970-01-01T01:00:00',            # OPTIONAL
      IfNoneMatch                => 'MyIfNoneMatch',                  # OPTIONAL
      IfUnmodifiedSince          => '1970-01-01T01:00:00',            # OPTIONAL
      PartNumber                 => 1,                                # OPTIONAL
      Range                      => 'MyRange',                        # OPTIONAL
      RequestPayer               => 'requester',                      # OPTIONAL
      ResponseCacheControl       => 'MyResponseCacheControl',         # OPTIONAL
      ResponseContentDisposition => 'MyResponseContentDisposition',   # OPTIONAL
      ResponseContentEncoding    => 'MyResponseContentEncoding',      # OPTIONAL
      ResponseContentLanguage    => 'MyResponseContentLanguage',      # OPTIONAL
      ResponseContentType        => 'MyResponseContentType',          # OPTIONAL
      ResponseExpires            => '1970-01-01T01:00:00',            # OPTIONAL
      SSECustomerAlgorithm       => 'MySSECustomerAlgorithm',         # OPTIONAL
      SSECustomerKey             => 'MySSECustomerKey',               # OPTIONAL
      SSECustomerKeyMD5          => 'MySSECustomerKeyMD5',            # OPTIONAL
      VersionId                  => 'MyObjectVersionId',              # OPTIONAL
    );

    # Results:
    my $AcceptRanges              = $GetObjectOutput->AcceptRanges;
    my $Body                      = $GetObjectOutput->Body;
    my $CacheControl              = $GetObjectOutput->CacheControl;
    my $ContentDisposition        = $GetObjectOutput->ContentDisposition;
    my $ContentEncoding           = $GetObjectOutput->ContentEncoding;
    my $ContentLanguage           = $GetObjectOutput->ContentLanguage;
    my $ContentLength             = $GetObjectOutput->ContentLength;
    my $ContentRange              = $GetObjectOutput->ContentRange;
    my $ContentType               = $GetObjectOutput->ContentType;
    my $DeleteMarker              = $GetObjectOutput->DeleteMarker;
    my $ETag                      = $GetObjectOutput->ETag;
    my $Expiration                = $GetObjectOutput->Expiration;
    my $Expires                   = $GetObjectOutput->Expires;
    my $LastModified              = $GetObjectOutput->LastModified;
    my $Metadata                  = $GetObjectOutput->Metadata;
    my $MissingMeta               = $GetObjectOutput->MissingMeta;
    my $ObjectLockLegalHoldStatus = $GetObjectOutput->ObjectLockLegalHoldStatus;
    my $ObjectLockMode            = $GetObjectOutput->ObjectLockMode;
    my $ObjectLockRetainUntilDate = $GetObjectOutput->ObjectLockRetainUntilDate;
    my $PartsCount                = $GetObjectOutput->PartsCount;
    my $ReplicationStatus         = $GetObjectOutput->ReplicationStatus;
    my $RequestCharged            = $GetObjectOutput->RequestCharged;
    my $Restore                   = $GetObjectOutput->Restore;
    my $SSECustomerAlgorithm      = $GetObjectOutput->SSECustomerAlgorithm;
    my $SSECustomerKeyMD5         = $GetObjectOutput->SSECustomerKeyMD5;
    my $SSEKMSKeyId               = $GetObjectOutput->SSEKMSKeyId;
    my $ServerSideEncryption      = $GetObjectOutput->ServerSideEncryption;
    my $StorageClass              = $GetObjectOutput->StorageClass;
    my $TagCount                  = $GetObjectOutput->TagCount;
    my $VersionId                 = $GetObjectOutput->VersionId;
    my $WebsiteRedirectLocation   = $GetObjectOutput->WebsiteRedirectLocation;

    # Returns a L<Paws::S3::GetObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 IfMatch => Str

Return the object only if its entity tag (ETag) is the same as the one
specified, otherwise return a 412 (precondition failed).



=head2 IfModifiedSince => Str

Return the object only if it has been modified since the specified
time, otherwise return a 304 (not modified).



=head2 IfNoneMatch => Str

Return the object only if its entity tag (ETag) is different from the
one specified, otherwise return a 304 (not modified).



=head2 IfUnmodifiedSince => Str

Return the object only if it has not been modified since the specified
time, otherwise return a 412 (precondition failed).



=head2 B<REQUIRED> Key => Str





=head2 PartNumber => Int

Part number of the object being read. This is a positive integer
between 1 and 10,000. Effectively performs a 'ranged' GET request for
the part specified. Useful for downloading just a part of an object.



=head2 Range => Str

Downloads the specified range bytes of an object. For more information
about the HTTP Range header, go to
http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 ResponseCacheControl => Str

Sets the Cache-Control header of the response.



=head2 ResponseContentDisposition => Str

Sets the Content-Disposition header of the response



=head2 ResponseContentEncoding => Str

Sets the Content-Encoding header of the response.



=head2 ResponseContentLanguage => Str

Sets the Content-Language header of the response.



=head2 ResponseContentType => Str

Sets the Content-Type header of the response.



=head2 ResponseExpires => Str

Sets the Expires header of the response.



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



=head2 VersionId => Str

VersionId used to reference a specific version of the object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

