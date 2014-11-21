package Aws::RedShift::HsmClientCertificate {
  use Moose;
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmClientCertificatePublicKey => (is => 'ro', isa => 'Str');
}
1;
