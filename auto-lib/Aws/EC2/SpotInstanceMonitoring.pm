package Aws::EC2::SpotInstanceMonitoring {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
}
1
