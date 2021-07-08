
package Paws::S3::PutObjectOutput;
  use Moose;
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Expiration => (is => 'ro', isa => 'Str', header_name => 'x-amz-expiration', traits => ['ParamInHeader']);
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has SSEKMSEncryptionContext => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-context', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-version-id', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectOutput

=head1 ATTRIBUTES


=head2 BucketKeyEnabled => Bool

Indicates whether the uploaded object uses an S3 Bucket Key for
server-side encryption with AWS KMS (SSE-KMS).



=head2 ETag => Str

Entity tag for the uploaded object.



=head2 Expiration => Str

If the expiration is configured for the object (see
PutBucketLifecycleConfiguration
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html)),
the response includes this header. It includes the expiry-date and
rule-id key-value pairs that provide information about object
expiration. The value of the rule-id is URL encoded.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 ServerSideEncryption => Str

If you specified server-side encryption either with an AWS KMS customer
master key (CMK) or Amazon S3-managed encryption key in your PUT
request, the response includes this header. It confirms the encryption
algorithm that Amazon S3 used to encrypt the object.

Valid values are: C<"AES256">, C<"aws:kms">

=head2 SSECustomerAlgorithm => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header confirming the
encryption algorithm used.



=head2 SSECustomerKeyMD5 => Str

If server-side encryption with a customer-provided encryption key was
requested, the response will include this header to provide round-trip
message integrity verification of the customer-provided encryption key.



=head2 SSEKMSEncryptionContext => Str

If present, specifies the AWS KMS Encryption Context to use for object
encryption. The value of this header is a base64-encoded UTF-8 string
holding JSON with the encryption context key-value pairs.



=head2 SSEKMSKeyId => Str

If C<x-amz-server-side-encryption> is present and has the value of
C<aws:kms>, this header specifies the ID of the AWS Key Management
Service (AWS KMS) symmetric customer managed customer master key (CMK)
that was used for the object.



=head2 VersionId => Str

Version of the object.




=cut

