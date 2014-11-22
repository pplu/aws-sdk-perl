
package Paws::CodeDeploy::CreateDeployment {
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str', required => 1);
  has deploymentConfigName => (is => 'ro', isa => 'Str');
  has deploymentGroupName => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has ignoreApplicationStopFailures => (is => 'ro', isa => 'Bool');
  has revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;