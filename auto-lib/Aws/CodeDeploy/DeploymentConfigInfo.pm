package Aws::CodeDeploy::DeploymentConfigInfo {
  use Moose;
  has createTime => (is => 'ro', isa => 'Str');
  has deploymentConfigId => (is => 'ro', isa => 'Str');
  has deploymentConfigName => (is => 'ro', isa => 'Str');
  has minimumHealthyHosts => (is => 'ro', isa => 'Aws::CodeDeploy::MinimumHealthyHosts');
}
1;
