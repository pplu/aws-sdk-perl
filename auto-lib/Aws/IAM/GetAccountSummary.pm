
package Aws::IAM::GetAccountSummary {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetAccountSummaryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetAccountSummaryResult');
}
1;