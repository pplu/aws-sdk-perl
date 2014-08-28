
package Aws::IAM::GenerateCredentialReport {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateCredentialReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GenerateCredentialReportResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GenerateCredentialReportResult');
}
1;
  