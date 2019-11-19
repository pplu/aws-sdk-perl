
package Paws::S3::CreateMultipartUploadOutput;
  use Moose;
  has AbortDate => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-abort-date');
  has AbortRuleId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-abort-rule-id');
  has Bucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'Bucket');
  has Key => (is => 'ro', isa => 'Str');
  has RequestCharged => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-request-charged');
  has ServerSideEncryption => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-customer-algorithm');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-customer-key-MD5');
  has SSEKMSEncryptionContext => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-context');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-aws-kms-key-id');
  has UploadId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateMultipartUploadOutput

=head1 ATTRIBUTES


=head2 AbortDate => Str

If the bucket has a lifecycle rule configured with an action to abort
incomplete multipart uploads and the prefix in the lifecycle rule
matches the object name in the request, the response includes this
header. The header indicates when the initiated multipart upload
becomes eligible for an abort operation. For more information, see
Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy
(https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).

The response also includes the x-amz-abort-rule-id header that provides
the ID of the lifecycle configuration rule that defines this action.



=head2 AbortRuleId => Str

This header is returned along with the x-amz-abort-date header. It
identifies the applicable lifecycle configuration rule that defines the
action to abort incomplete multipart uploads.



=head2 Bucket => Str

Name of the bucket to which the multipart upload was initiated.



=head2 Key => Str

Object key for which the multipart upload was initiated.



=head2 RequestCharged => Str



Valid values are: C<"requester">

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



=head2 SSEKMSEncryptionContext => Str

If present, specifies the AWS KMS Encryption Context to use for object
encryption. The value of this header is a base64-encoded UTF-8 string
holding JSON with the encryption context key-value pairs.



=head2 SSEKMSKeyId => Str

If present, specifies the ID of the AWS Key Management Service (KMS)
customer master key (CMK) that was used for the object.



=head2 UploadId => Str

ID for the initiated multipart upload.




=cut

