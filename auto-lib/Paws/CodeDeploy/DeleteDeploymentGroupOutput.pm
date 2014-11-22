
package Paws::CodeDeploy::DeleteDeploymentGroupOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has hooksNotCleanedUp => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::AutoScalingGroup]');

}
1;