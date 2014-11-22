
package Paws::Support::DescribeTrustedAdvisorChecks {
  use Moose;
  has language => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorChecks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::DescribeTrustedAdvisorChecksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;