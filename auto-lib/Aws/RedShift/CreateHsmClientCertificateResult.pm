
package Aws::RedShift::CreateHsmClientCertificateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmClientCertificate => (is => 'ro', isa => 'Aws::RedShift::HsmClientCertificate');

}
1;