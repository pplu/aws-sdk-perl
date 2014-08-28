
package Aws::IAM::UploadSigningCertificate {
  use Moose;
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::UploadSigningCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificateResult');
}
1;
  