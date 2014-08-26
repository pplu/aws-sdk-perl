package Aws::EMR::BootstrapActionDetail {
  use Moose;
  with ('AWS::API::ResultParser');
  has BootstrapActionConfig => (is => 'ro', isa => 'Aws::EMR::BootstrapActionConfig');
}
1
