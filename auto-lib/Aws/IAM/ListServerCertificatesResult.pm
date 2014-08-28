
package Aws::IAM::ListServerCertificatesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has ServerCertificateMetadataList => (is => 'ro', isa => 'ArrayRef[Aws::IAM::ServerCertificateMetadata]', required => 1);

}
1;