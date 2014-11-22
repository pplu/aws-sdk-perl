
package Paws::Support::DescribeTrustedAdvisorCheckResult {
  use Moose;
  has checkId => (is => 'ro', isa => 'Str', required => 1);
  has language => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckResult');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::DescribeTrustedAdvisorCheckResultResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;