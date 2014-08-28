
package Aws::Support::DescribeTrustedAdvisorCheckSummaries {
  use Moose;
  has checkIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckSummaries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeTrustedAdvisorCheckSummariesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;