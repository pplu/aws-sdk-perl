
package Paws::IAM::GetServerCertificateResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ServerCertificate => (is => 'ro', isa => 'Paws::IAM::ServerCertificate', required => 1);

}
1;