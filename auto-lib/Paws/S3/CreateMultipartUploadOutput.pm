
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
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-aws-kms-key-id');
  has UploadId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateMultipartUploadOutput

=head1 ATTRIBUTES


=head2 AbortDate => Str

Date when multipart upload will become eligible for abort operation by
lifecycle.



=head2 AbortRuleId => Str

Id of the lifecycle rule that makes a multipart upload eligible for
abort operation.



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



=head2 SSEKMSKeyId => Str

If present, specifies the ID of the AWS Key Management Service (KMS)
master encryption key that was used for the object.



=head2 UploadId => Str

ID for the initiated multipart upload.




=cut

