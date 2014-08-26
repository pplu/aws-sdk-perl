package Aws::EMR::BootstrapActionConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ScriptBootstrapAction => (is => 'ro', isa => 'Aws::EMR::ScriptBootstrapActionConfig', required => 1);
}
1
