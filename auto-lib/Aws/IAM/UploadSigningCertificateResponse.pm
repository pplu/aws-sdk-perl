
package Aws::IAM::UploadSigningCertificateResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Certificate => (is => 'ro', isa => 'Aws::IAM::SigningCertificate', required => 1);

}
1;