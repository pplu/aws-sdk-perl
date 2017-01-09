
package Paws::S3::CopyObjectOutput;
  use Moose;
  has CopyObjectResult => (is => 'ro', isa => 'Paws::S3::CopyObjectResult');
  has CopySourceVersionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-copy-source-version-id');
  has Expiration => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-expiration');
  has RequestCharged => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-request-charged');
  has ServerSideEncryption => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption');
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-customer-algorithm');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-customer-key-MD5');
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-server-side-encryption-aws-kms-key-id');
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-version-id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CopyObjectOutput

=head1 ATTRIBUTES


=head2 CopyObjectResult => L<Paws::S3::CopyObjectResult>





=head2 CopySourceVersionId => Str





=head2 Expiration => Str

If the object expiration is configured, the response includes this
header.



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



=head2 VersionId => Str

Version ID of the newly created copy.




=cut

