package Aws::RedShift::HsmClientCertificate {
  use Moose;
  with ('AWS::API::ResultParser');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmClientCertificatePublicKey => (is => 'ro', isa => 'Str');
}
1
