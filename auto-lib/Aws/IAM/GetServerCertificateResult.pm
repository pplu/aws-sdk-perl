
package Aws::IAM::GetServerCertificateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ServerCertificate => (is => 'ro', isa => 'Aws::IAM::ServerCertificate', required => 1);

}
1;