
package Paws::S3::UploadPart;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['ParamInBody']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContentLength => (is => 'ro', isa => 'Int', header_name => 'Content-Length', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', query_name => 'partNumber', traits => ['ParamInQuery'], required => 1);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has UploadId => (is => 'ro', isa => 'Str', query_name => 'uploadId', traits => ['ParamInQuery'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadPart');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::UploadPartOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _stream_param => (is => 'ro', default => 'Body');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::UploadPart - Arguments for method UploadPart on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadPart on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method UploadPart.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadPart.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $UploadPartOutput = $s3->UploadPart(
      Bucket               => 'MyBucketName',
      Key                  => 'MyObjectKey',
      PartNumber           => 1,
      UploadId             => 'MyMultipartUploadId',
      Body                 => 'BlobBody',                  # OPTIONAL
      ContentLength        => 1,                           # OPTIONAL
      ContentMD5           => 'MyContentMD5',              # OPTIONAL
      RequestPayer         => 'requester',                 # OPTIONAL
      SSECustomerAlgorithm => 'MySSECustomerAlgorithm',    # OPTIONAL
      SSECustomerKey       => 'MySSECustomerKey',          # OPTIONAL
      SSECustomerKeyMD5    => 'MySSECustomerKeyMD5',       # OPTIONAL
    );

    # Results:
    my $ETag                 = $UploadPartOutput->ETag;
    my $RequestCharged       = $UploadPartOutput->RequestCharged;
    my $SSECustomerAlgorithm = $UploadPartOutput->SSECustomerAlgorithm;
    my $SSECustomerKeyMD5    = $UploadPartOutput->SSECustomerKeyMD5;
    my $SSEKMSKeyId          = $UploadPartOutput->SSEKMSKeyId;
    my $ServerSideEncryption = $UploadPartOutput->ServerSideEncryption;

    # Returns a L<Paws::S3::UploadPartOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/UploadPart>

=head1 ATTRIBUTES


=head2 Body => Str

Object data.



=head2 B<REQUIRED> Bucket => Str

Name of the bucket to which the multipart upload was initiated.



=head2 ContentLength => Int

Size of the body in bytes. This parameter is useful when the size of
the body cannot be determined automatically.



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the part data.



=head2 B<REQUIRED> Key => Str

Object key for which the multipart upload was initiated.



=head2 B<REQUIRED> PartNumber => Int

Part number of part being uploaded. This is a positive integer between
1 and 10,000.



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

Upload ID identifying the multipart upload whose part is being
uploaded.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadPart in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

