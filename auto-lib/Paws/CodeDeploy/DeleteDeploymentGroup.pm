
package Paws::CodeDeploy::DeleteDeploymentGroup {
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str', required => 1);
  has deploymentGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDeploymentGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::DeleteDeploymentGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;