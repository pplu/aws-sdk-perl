
package Aws::IAM::GetServerCertificate {
  use Moose;
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServerCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetServerCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetServerCertificateResult');
}
1;