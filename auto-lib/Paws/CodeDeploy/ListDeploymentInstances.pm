
package Paws::CodeDeploy::ListDeploymentInstances {
  use Moose;
  has deploymentId => (is => 'ro', isa => 'Str', required => 1);
  has instanceStatusFilter => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeploymentInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListDeploymentInstancesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;