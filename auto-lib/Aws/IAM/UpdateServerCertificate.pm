
package Aws::IAM::UpdateServerCertificate {
  use Moose;
  has NewPath => (is => 'ro', isa => 'Str');
  has NewServerCertificateName => (is => 'ro', isa => 'Str');
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServerCertificate');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
