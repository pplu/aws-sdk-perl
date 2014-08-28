
package Aws::CloudSearch::UpdateScalingParameters {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingParameters => (is => 'ro', isa => 'Aws::CloudSearch::ScalingParameters', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScalingParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::UpdateScalingParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateScalingParametersResult');
}
1;
