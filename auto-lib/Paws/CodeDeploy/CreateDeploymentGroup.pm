
package Paws::CodeDeploy::CreateDeploymentGroup {
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str', required => 1);
  has autoScalingGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has deploymentConfigName => (is => 'ro', isa => 'Str');
  has deploymentGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ec2TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::EC2TagFilter]');
  has serviceRoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeploymentGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;