
package Paws::RedShift::CreateHsmClientCertificate {
  use Moose;
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHsmClientCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CreateHsmClientCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateHsmClientCertificateResult');
}
1;