package Aws::ELB::ConnectionDraining {
  use Moose;
  with ('AWS::API::ResultParser');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Timeout => (is => 'ro', isa => 'Int');
}
1
