
package Aws::CloudSearch::DescribeScalingParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ScalingParameters => (is => 'ro', isa => 'Aws::CloudSearch::ScalingParametersStatus', required => 1);

}
1;