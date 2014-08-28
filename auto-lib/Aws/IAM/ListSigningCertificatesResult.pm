
package Aws::IAM::ListSigningCertificatesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Certificates => (is => 'ro', isa => 'ArrayRef[Aws::IAM::SigningCertificate]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
1;