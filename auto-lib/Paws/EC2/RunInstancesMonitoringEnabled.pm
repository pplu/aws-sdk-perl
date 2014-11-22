package Paws::EC2::RunInstancesMonitoringEnabled {
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'enabled', required => 1);
}
1;
