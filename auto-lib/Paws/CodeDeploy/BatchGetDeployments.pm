
package Paws::CodeDeploy::BatchGetDeployments {
  use Moose;
  has deploymentIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetDeployments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::BatchGetDeploymentsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;