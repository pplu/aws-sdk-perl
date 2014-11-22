
package Paws::CloudSearch::DescribeScalingParametersResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ScalingParameters => (is => 'ro', isa => 'Paws::CloudSearch::ScalingParametersStatus', required => 1);

}
1;