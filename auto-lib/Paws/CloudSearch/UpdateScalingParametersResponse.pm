
package Paws::CloudSearch::UpdateScalingParametersResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ScalingParameters => (is => 'ro', isa => 'Paws::CloudSearch::ScalingParametersStatus', required => 1);

}
1;