package Aws::EMR::BootstrapActionDetail {
  use Moose;
  has BootstrapActionConfig => (is => 'ro', isa => 'Aws::EMR::BootstrapActionConfig');
}
1
