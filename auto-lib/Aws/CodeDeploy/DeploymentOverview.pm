package Aws::CodeDeploy::DeploymentOverview {
  use Moose;
  has Failed => (is => 'ro', isa => 'Num');
  has InProgress => (is => 'ro', isa => 'Num');
  has Pending => (is => 'ro', isa => 'Num');
  has Skipped => (is => 'ro', isa => 'Num');
  has Succeeded => (is => 'ro', isa => 'Num');
}
1;
