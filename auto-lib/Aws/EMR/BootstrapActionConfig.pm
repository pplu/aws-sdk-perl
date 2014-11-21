package Aws::EMR::BootstrapActionConfig {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ScriptBootstrapAction => (is => 'ro', isa => 'Aws::EMR::ScriptBootstrapActionConfig', required => 1);
}
1;
