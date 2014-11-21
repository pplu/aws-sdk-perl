package Aws::CodeDeploy::DeploymentGroupInfo {
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str');
  has autoScalingGroups => (is => 'ro', isa => 'ArrayRef[Aws::CodeDeploy::AutoScalingGroup]');
  has deploymentConfigName => (is => 'ro', isa => 'Str');
  has deploymentGroupId => (is => 'ro', isa => 'Str');
  has deploymentGroupName => (is => 'ro', isa => 'Str');
  has ec2TagFilters => (is => 'ro', isa => 'ArrayRef[Aws::CodeDeploy::EC2TagFilter]');
  has serviceRoleArn => (is => 'ro', isa => 'Str');
  has targetRevision => (is => 'ro', isa => 'Aws::CodeDeploy::RevisionLocation');
}
1;
