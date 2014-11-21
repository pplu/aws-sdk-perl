
package Aws::CodeDeploy::UpdateDeploymentGroupOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has hooksNotCleanedUp => (is => 'ro', isa => 'ArrayRef[Aws::CodeDeploy::AutoScalingGroup]');

}
1;