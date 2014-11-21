
package Aws::IAM::UploadServerCertificateResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has ServerCertificateMetadata => (is => 'ro', isa => 'Aws::IAM::ServerCertificateMetadata');

}
1;