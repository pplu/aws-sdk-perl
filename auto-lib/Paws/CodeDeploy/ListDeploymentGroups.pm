
package Paws::CodeDeploy::ListDeploymentGroups {
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str', required => 1);
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeploymentGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListDeploymentGroupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;