package Aws::CloudSearch::ScalingParametersStatus {
  use Moose;
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::ScalingParameters', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}
1
