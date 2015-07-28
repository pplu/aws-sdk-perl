package Paws::EC2::SpotFleetMonitoring {
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', xmlname => 'enabled', traits => ['Unwrapped']);
}
1;
