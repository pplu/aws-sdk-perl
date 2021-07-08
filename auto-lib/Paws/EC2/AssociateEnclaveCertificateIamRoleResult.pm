
package Paws::EC2::AssociateEnclaveCertificateIamRoleResult;
  use Moose;
  has CertificateS3BucketName => (is => 'ro', isa => 'Str', request_name => 'certificateS3BucketName', traits => ['NameInRequest',]);
  has CertificateS3ObjectKey => (is => 'ro', isa => 'Str', request_name => 'certificateS3ObjectKey', traits => ['NameInRequest',]);
  has EncryptionKmsKeyId => (is => 'ro', isa => 'Str', request_name => 'encryptionKmsKeyId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateEnclaveCertificateIamRoleResult

=head1 ATTRIBUTES


=head2 CertificateS3BucketName => Str

The name of the Amazon S3 bucket to which the certificate was uploaded.


=head2 CertificateS3ObjectKey => Str

The Amazon S3 object key where the certificate, certificate chain, and
encrypted private key bundle are stored. The object key is formatted as
follows: C<role_arn>/C<certificate_arn>.


=head2 EncryptionKmsKeyId => Str

The ID of the AWS KMS CMK used to encrypt the private key of the
certificate.


=head2 _request_id => Str


=cut

