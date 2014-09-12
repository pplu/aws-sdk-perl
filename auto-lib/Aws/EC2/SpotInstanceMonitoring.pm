package Aws::EC2::SpotInstanceMonitoring {
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
}
1
