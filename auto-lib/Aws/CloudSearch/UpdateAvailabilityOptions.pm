
package Aws::CloudSearch::UpdateAvailabilityOptions {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has MultiAZ => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAvailabilityOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::UpdateAvailabilityOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAvailabilityOptionsResult');
}
1;
  