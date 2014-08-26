package Aws::ELB::Instance {
  use Moose;
  with ('AWS::API::ResultParser');
  has InstanceId => (is => 'ro', isa => 'Str');
}
1
