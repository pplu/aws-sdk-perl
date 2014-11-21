
package Aws::IAM::UploadServerCertificate {
  use Moose;
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has CertificateChain => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str', required => 1);
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadServerCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::UploadServerCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UploadServerCertificateResult');
}
1;