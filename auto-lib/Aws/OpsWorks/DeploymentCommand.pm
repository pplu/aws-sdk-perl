package Aws::OpsWorks::DeploymentCommand {
  use Moose;
  with ('AWS::API::ResultParser');
  has Args => (is => 'ro', isa => 'Aws::OpsWorks::DeploymentCommandArgs');
  has Name => (is => 'ro', isa => 'Str', required => 1);
}
1
