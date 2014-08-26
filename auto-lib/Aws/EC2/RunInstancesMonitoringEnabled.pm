package Aws::EC2::RunInstancesMonitoringEnabled {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
}
1
