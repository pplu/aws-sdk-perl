
package Aws::CodeDeploy::ListDeploymentConfigs {
  use Moose;
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeploymentConfigs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CodeDeploy::ListDeploymentConfigsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;