
package Aws::IAM::GetCredentialReport {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCredentialReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetCredentialReportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetCredentialReportResult');
}
1;