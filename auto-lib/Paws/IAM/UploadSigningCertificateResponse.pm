
package Paws::IAM::UploadSigningCertificateResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Certificate => (is => 'ro', isa => 'Paws::IAM::SigningCertificate', required => 1);

}
1;