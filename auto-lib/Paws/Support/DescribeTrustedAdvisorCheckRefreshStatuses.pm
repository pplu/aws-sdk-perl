
package Paws::Support::DescribeTrustedAdvisorCheckRefreshStatuses {
  use Moose;
  has checkIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckRefreshStatuses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;