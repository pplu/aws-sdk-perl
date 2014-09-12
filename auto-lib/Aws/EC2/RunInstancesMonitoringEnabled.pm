package Aws::EC2::RunInstancesMonitoringEnabled {
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
}
1
