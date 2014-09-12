package Aws::OpsWorks::DeploymentCommand {
  use Moose;
  has Args => (is => 'ro', isa => 'Aws::OpsWorks::DeploymentCommandArgs');
  has Name => (is => 'ro', isa => 'Str', required => 1);
}
1
