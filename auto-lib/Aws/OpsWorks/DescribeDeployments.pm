
package Aws::OpsWorks::DescribeDeployments {
  use Moose;
  has AppId => (is => 'ro', isa => 'Str');
  has DeploymentIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeployments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeDeploymentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;