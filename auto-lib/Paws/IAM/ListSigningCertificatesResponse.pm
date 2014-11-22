
package Paws::IAM::ListSigningCertificatesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::IAM::SigningCertificate]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
1;