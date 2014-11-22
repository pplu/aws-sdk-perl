
package Paws::IAM::UploadServerCertificateResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ServerCertificateMetadata => (is => 'ro', isa => 'Paws::IAM::ServerCertificateMetadata');

}
1;