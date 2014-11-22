
package Paws::CodeDeploy::ListDeployments {
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str');
  has createTimeRange => (is => 'ro', isa => 'Paws::CodeDeploy::TimeRange');
  has deploymentGroupName => (is => 'ro', isa => 'Str');
  has includeOnlyStatuses => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeployments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListDeploymentsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;