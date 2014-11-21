
package Aws::CloudSearch::DescribeScalingParameters {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeScalingParametersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingParametersResult');
}
1;