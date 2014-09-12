package Aws::IAM::ServerCertificate {
  use Moose;
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has ServerCertificateMetadata => (is => 'ro', isa => 'Aws::IAM::ServerCertificateMetadata', required => 1);
}
1
