
package Paws::RedShift::CreateHsmClientCertificateResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has HsmClientCertificate => (is => 'ro', isa => 'Paws::RedShift::HsmClientCertificate');

}
1;