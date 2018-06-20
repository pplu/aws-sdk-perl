
package Paws::S3::UploadPartCopy;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has CopySource => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source', traits => ['ParamInHeader'], required => 1);
  has CopySourceIfMatch => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-match', traits => ['ParamInHeader']);
  has CopySourceIfModifiedSince => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-modified-since', traits => ['ParamInHeader']);
  has CopySourceIfNoneMatch => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-none-match', traits => ['ParamInHeader']);
  has CopySourceIfUnmodifiedSince => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-if-unmodified-since', traits => ['ParamInHeader']);
  has CopySourceRange => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-range', traits => ['ParamInHeader']);
  has CopySourceSSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has CopySourceSSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has CopySourceSSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-copy-source-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', query_name => 'partNumber', traits => ['ParamInQuery'], required => 1);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has UploadId => (is => 'ro', isa => 'Str', query_name => 'uploadId', traits => ['ParamInQuery'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadPartCopy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::UploadPartCopyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::UploadPartCopy - Arguments for method UploadPartCopy on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadPartCopy on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method UploadPartCopy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadPartCopy.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $UploadPartCopyOutput = $s3->UploadPartCopy(
      Bucket                      => 'MyBucketName',
      CopySource                  => 'MyCopySource',
      Key                         => 'MyObjectKey',
      PartNumber                  => 1,
      UploadId                    => 'MyMultipartUploadId',
      CopySourceIfMatch           => 'MyCopySourceIfMatch',        # OPTIONAL
      CopySourceIfModifiedSince   => '1970-01-01T01:00:00',        # OPTIONAL
      CopySourceIfNoneMatch       => 'MyCopySourceIfNoneMatch',    # OPTIONAL
      CopySourceIfUnmodifiedSince => '1970-01-01T01:00:00',        # OPTIONAL
      CopySourceRange             => 'MyCopySourceRange',          # OPTIONAL
      CopySourceSSECustomerAlgorithm =>
        'MyCopySourceSSECustomerAlgorithm',                        # OPTIONAL
      CopySourceSSECustomerKey    => 'MyCopySourceSSECustomerKey',    # OPTIONAL
      CopySourceSSECustomerKeyMD5 => 'MyCopySourceSSECustomerKeyMD5', # OPTIONAL
      RequestPayer                => 'requester',                     # OPTIONAL
      SSECustomerAlgorithm        => 'MySSECustomerAlgorithm',        # OPTIONAL
      SSECustomerKey              => 'MySSECustomerKey',              # OPTIONAL
      SSECustomerKeyMD5           => 'MySSECustomerKeyMD5',           # OPTIONAL
    );

    # Results:
    my $CopyPartResult       = $UploadPartCopyOutput->CopyPartResult;
    my $CopySourceVersionId  = $UploadPartCopyOutput->CopySourceVersionId;
    my $RequestCharged       = $UploadPartCopyOutput->RequestCharged;
    my $SSECustomerAlgorithm = $UploadPartCopyOutput->SSECustomerAlgorithm;
    my $SSECustomerKeyMD5    = $UploadPartCopyOutput->SSECustomerKeyMD5;
    my $SSEKMSKeyId          = $UploadPartCopyOutput->SSEKMSKeyId;
    my $ServerSideEncryption = $UploadPartCopyOutput->ServerSideEncryption;

    # Returns a L<Paws::S3::UploadPartCopyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/UploadPartCopy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 B<REQUIRED> CopySource => Str

The name of the source bucket and key name of the source object,
separated by a slash (/). Must be URL-encoded.



=head2 CopySourceIfMatch => Str

Copies the object if its entity tag (ETag) matches the specified tag.



=head2 CopySourceIfModifiedSince => Str

Copies the object if it has been modified since the specified time.



=head2 CopySourceIfNoneMatch => Str

Copies the object if its entity tag (ETag) is different than the
specified ETag.



=head2 CopySourceIfUnmodifiedSince => Str

Copies the object if it hasn't been modified since the specified time.



=head2 CopySourceRange => Str

The range of bytes to copy from the source object. The range value must
use the form bytes=first-last, where the first and last are the
zero-based byte offsets to copy. For example, bytes=0-9 indicates that
you want to copy the first ten bytes of the source. You can copy a
range only if the source object is greater than 5 GB.



=head2 CopySourceSSECustomerAlgorithm => Str

Specifies the algorithm to use when decrypting the source object (e.g.,
AES256).



=head2 CopySourceSSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use to
decrypt the source object. The encryption key provided in this header
must be one that was used when the source object was created.



=head2 CopySourceSSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure the encryption key was transmitted without error.



=head2 B<REQUIRED> Key => Str





=head2 B<REQUIRED> PartNumber => Int

Part number of part being copied. This is a positive integer between 1
and 10,000.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 SSECustomerAlgorithm => Str

Specifies the algorithm to use to when encrypting the object (e.g.,
AES256).



=head2 SSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded; Amazon does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
x-amz-server-side-encryption-customer-algorithm header. This must be
the same encryption key specified in the initiate multipart upload
request.



=head2 SSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure the encryption key was transmitted without error.



=head2 B<REQUIRED> UploadId => Str

Upload ID identifying the multipart upload whose part is being copied.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadPartCopy in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

