
package Aws::CodeDeploy::UpdateDeploymentGroup {
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str', required => 1);
  has autoScalingGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has currentDeploymentGroupName => (is => 'ro', isa => 'Str', required => 1);
  has deploymentConfigName => (is => 'ro', isa => 'Str');
  has ec2TagFilters => (is => 'ro', isa => 'ArrayRef[Aws::CodeDeploy::EC2TagFilter]');
  has newDeploymentGroupName => (is => 'ro', isa => 'Str');
  has serviceRoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDeploymentGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CodeDeploy::UpdateDeploymentGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;