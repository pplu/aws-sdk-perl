
package Aws::Support::RefreshTrustedAdvisorCheck {
  use Moose;
  has checkId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RefreshTrustedAdvisorCheck');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::RefreshTrustedAdvisorCheckResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
